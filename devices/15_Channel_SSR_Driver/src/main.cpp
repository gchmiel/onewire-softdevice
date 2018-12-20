/* Inferno Embedded 15 Channel SSR Driver
 * Copyright (C) 2018 Inferno Embedded
 *
 *  This program is free software: you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation, either version 3 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

#include "mbed.h"

#include <SwitchMaster.h>
#define WANT_TRACE 1
#include "trace.h"

using namespace infernoembedded;

#if WANT_TRACE
Serial trace(USBTX, USBRX, "trace", 921600);
#endif

#define DEBOUNCE_PERIOD 100 // milliseconds
Timer timer;

#define MAX_SWITCH_CHANNELS 4
static void gpioIrqHandler(uint32_t id, gpio_irq_event event);

typedef struct switchPin {
    gpio_t gpio;
    gpio_irq_t gpio_irq;
    int lastActivation = 0;
    SwitchMode mode = SwitchMode::TOGGLE_PULL_DOWN;
} SwitchPin;

/**
 * Represents a switch port
 */
class Port {
protected:
	SwitchMaster<0, 0, 0, 0, 8, 2> &_master;
	uint8_t _switchCount;
	uint64_t _activations = 0;
	uint8_t _id;

public:
	SwitchPin _channels[MAX_SWITCH_CHANNELS];

	/**
	 * Constructor
	 * @param id the port id
	 * @param master the master to notify that a switch has been activated
	 * @param switches an array on pinCount switches
	 * @param switchCount the number of switches (maximum of 8)
	 */
	Port(uint8_t id, SwitchMaster<0, 0, 0, 0, 8, 2> &master, PinName *switches, uint8_t switchCount) : _master(master), _switchCount(switchCount), _id(id) {
		for (uint8_t channel = 0; channel < _switchCount; channel++) {
			gpio_init(&_channels[channel].gpio, switches[channel]);
			gpio_dir(&_channels[channel].gpio, PIN_INPUT);

			setMode(channel, SwitchMode::TOGGLE_PULL_UP);
			uint32_t chan = (uint32_t)channel << 16;

			gpio_irq_init(&_channels[channel].gpio_irq, switches[channel], (&gpioIrqHandler), (uint32_t) this + 0x40000000 + chan); // Distinguish this from the OneWireSlave interrupt
			gpio_irq_set(&_channels[channel].gpio_irq, IRQ_FALL, 1);
			gpio_irq_set(&_channels[channel].gpio_irq, IRQ_RISE, 1);
			gpio_irq_enable(&_channels[channel].gpio_irq);
		}
	}

	/**
	 * Get the number of switches on this port
	 * @return the number of switches
	 */
	uint8_t countSwitches() {
		return _switchCount;
	}

	/**
	 * Get the metadata for a channel
	 * @param channel which channel to get
	 * @return a pointer to the metadata
	 */
	SwitchPin *getChannel(uint8_t channel) {
		return &(_channels[channel]);
	}

	/**
	 * Activate a switch
	 * @param switchChannel the channel of the switch
	 */
	void activateSwitch(uint8_t switchChannel) {
		int now = timer.read_ms();
		int delta = now - _channels[switchChannel].lastActivation;
		if (delta > 0 && delta < DEBOUNCE_PERIOD) {
			_channels[switchChannel].lastActivation = now;
			return;
		}

		TRACE("activate port %d channel %d", _id, switchChannel);

		_activations |= 1 << switchChannel;
		_master.switchHasBeenActivated();
	}

	/**
	 * Set the mode of a switch
	 * @param channel the switch channel
	 * @param mode the mode of the switch
	 */
	void setMode(uint8_t channel, SwitchMode mode) {
		if (channel >= _switchCount) {
			return;
		}

		TRACE("Setting mode %d on channel %u", (int)mode, channel);

		switch (mode) {
		case SwitchMode::TOGGLE_PULL_UP:
		case SwitchMode::MOMENTARY_PULL_UP:
			gpio_mode(&_channels[channel].gpio, PinMode::PullUp);
			break;
		case SwitchMode::MOMENTARY_PULL_DOWN:
		case SwitchMode::TOGGLE_PULL_DOWN:
			gpio_mode(&_channels[channel].gpio, PinMode::PullDown);
			break;
		}

		_channels[channel].mode = mode;
	}

	/**
	 * Get the raw state of a switch
	 * @param channel, the channel of the switch
	 */
	bool getState(uint8_t channel) {
		if (channel >= _switchCount) {
			return false;
		}
		return gpio_read(&_channels[channel].gpio);
	}

	/**
	 * Get the switch activations for this port
	 */
	uint64_t getActivations() {
		uint64_t activations = _activations;
		_activations &= ~activations;

		if (_activations) {
			_master.switchHasBeenActivated();
		}

		return activations;
	}
};

// P0
PinName port0Pins[] = {PC_9, PC_8};
PinName port1Pins[] = {PC_7, PC_6};
PinName port2Pins[] = {PB_15, PB_14};
PinName port3Pins[] = {PB_13, PB_12};
PinName port4Pins[] = {PB_11, PB_2};
PinName port5Pins[] = {PB_1, PB_0};
PinName port6Pins[] = {PC_5, PC_4};
PinName port7Pins[] = {PA_7, PA_6};  // PA_6 not connected on Rev 1.1 boards

class MySwitchListener : public SwitchListener {
protected:
	Port *_ports[8] = {NULL, NULL};

public:
	/**
	 * Tell the listener about a port
	 * @param index	the index of the port
	 * @param port a pointer to the port
	 */
	void setPort(uint8_t index, Port *port) {
		_ports[index] = port;
	}

	void setMode(uint8_t port, uint8_t channel, SwitchMode mode) {
		if (port >= 8 || NULL == _ports[port]) {
			return;
		}

		_ports[port]->setMode(channel, mode);
	}

	bool getState(uint8_t port, uint8_t channel) {
		if (port >= 8 || NULL == _ports[port]) {
			return false;
		}

		return _ports[port]->getState(channel);
	}

	uint64_t getActivations(uint8_t port) {
		if (port >= 8 || NULL == _ports[port]) {
			return 0;
		}

		return _ports[port]->getActivations();
	}
};

class myLEDListener : public LEDListener {
	void setState(uint8_t port __attribute__((unused)), uint8_t channel __attribute__((unused)), bool on __attribute__((unused))) {}
	uint64_t getState(uint8_t port __attribute__((unused))) {return 0;}
};

class myRelayListener : public RelayListener {
protected:
#define RELAY_PORT_COUNT	8
#define RELAY_CHANNEL_COUNT	2
	DigitalOut _channels[RELAY_PORT_COUNT][RELAY_CHANNEL_COUNT] = {
					{PC_9, PC_8},
					{PC_7, PC_6},
					{PB_15, PB_14},
					{PB_13, PB_12},
					{PB_11, PB_2},
					{PB_1, PB_0},
					{PC_5, PC_4},
					{PA_7, PA_6},  // PA_6 not connected on Rev 1.1 boards
	};

public:
	void setState(uint8_t port, uint8_t channel, bool state) {
		if (port >= RELAY_PORT_COUNT) {
			return;
		}

		if (channel >= RELAY_CHANNEL_COUNT) {
			return;
		}

		_channels[port][channel] = state ? 1 : 0;

		TRACE("Setting %d:%d %s", port, channel, state ? "on" : "off");
	}

	bool getState(uint8_t port, uint8_t channel) {
		return !!_channels[port][channel].read();
	}
};

MySwitchListener switchListener;
myLEDListener ledListener;
myRelayListener relayListener;

OneWireAddress address;
SwitchMaster<0, 0, 0, 0, 8, 2> dev(PF_0, address, switchListener, ledListener, relayListener);

/**
 * Handle incoming GPIO interrupts
 * @param id
 * @param event
 */
static void gpioIrqHandler(uint32_t id, gpio_irq_event event) {
	if ((id & 0xF0000000) == 0x20000000) {
		OneWireSlave *slave = (OneWireSlave *) id;

		// We have intercepted the OneWire slave handler - send it back
		if (event == IRQ_FALL) {
			slave->pinFall();
		} else {
			slave->pinRise();
		}
		return;
	}

	uint8_t channel = (id >> 16) & 0xFF;
	Port *port = (Port *) (id & 0x2F00FFFF);

	SwitchPin *pin = port->getChannel(channel);


	switch (pin->mode) {
	case SwitchMode::TOGGLE_PULL_UP:
	case SwitchMode::TOGGLE_PULL_DOWN:
		port->activateSwitch(channel);
		break;
	case SwitchMode::MOMENTARY_PULL_UP:
		if (event == IRQ_FALL) {
			port->activateSwitch(channel);
		}
		break;
	case SwitchMode::MOMENTARY_PULL_DOWN:
		if (event == IRQ_RISE) {
			port->activateSwitch(channel);
		}
		break;
	}
}

#ifdef INPUTS
Port port0(0, dev, port0Pins, 2);
Port port1(1, dev, port1Pins, 2);
Port port2(2, dev, port2Pins, 2);
Port port3(3, dev, port3Pins, 2);
Port port4(4, dev, port4Pins, 2);
Port port5(5, dev, port5Pins, 2);
Port port6(6, dev, port6Pins, 2);
Port port7(7, dev, port7Pins, 2);
#endif

int main() __attribute__((used));
int main() {
	TRACE("Binding ports");

	timer.start();

#ifdef INPUTS
	switchListener.setPort(0, &port0);
	switchListener.setPort(1, &port1);
	switchListener.setPort(2, &port1);
	switchListener.setPort(3, &port1);
	switchListener.setPort(4, &port1);
	switchListener.setPort(5, &port1);
	switchListener.setPort(6, &port1);
	switchListener.setPort(7, &port1);
#endif

	TRACE("15 Channel SSR online, built " __DATE__ " " __TIME__);
	TRACE("SystemCoreClock = %ld Hz", SystemCoreClock);
	dev.getAddress(address);
	TRACE("Address = %02x.%02x%02x%02x%02x%02x%02x.%02x", address.bytes[0], address.bytes[1], address.bytes[2],
					address.bytes[3], address.bytes[4], address.bytes[5], address.bytes[6], address.bytes[7]);

    while (1) {
    	dev.poll();
    }
}
