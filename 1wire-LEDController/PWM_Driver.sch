EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:74xgxx
LIBS:ac-dc
LIBS:actel
LIBS:Altera
LIBS:analog_devices
LIBS:battery_management
LIBS:bbd
LIBS:brooktre
LIBS:cmos_ieee
LIBS:dc-dc
LIBS:diode
LIBS:elec-unifil
LIBS:ESD_Protection
LIBS:ftdi
LIBS:gennum
LIBS:graphic
LIBS:hc11
LIBS:ir
LIBS:Lattice
LIBS:logo
LIBS:maxim
LIBS:microchip_dspic33dsc
LIBS:microchip_pic10mcu
LIBS:microchip_pic12mcu
LIBS:microchip_pic16mcu
LIBS:microchip_pic18mcu
LIBS:microchip_pic32mcu
LIBS:motor_drivers
LIBS:motors
LIBS:msp430
LIBS:nordicsemi
LIBS:nxp_armmcu
LIBS:onsemi
LIBS:Oscillators
LIBS:Power_Management
LIBS:powerint
LIBS:pspice
LIBS:references
LIBS:relays
LIBS:rfcom
LIBS:sensors
LIBS:silabs
LIBS:stm8
LIBS:supertex
LIBS:switches
LIBS:transf
LIBS:ttl_ieee
LIBS:video
LIBS:wiznet
LIBS:Worldsemi
LIBS:Xicor
LIBS:Zilog
LIBS:automotive-light-controller-cache
LIBS:lp2950
LIBS:G3MB-SSR
LIBS:JACK_STEREO
LIBS:1Wire-LEDController-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
Title "1 Wire LED Controller"
Date "2016-11-13"
Rev "1.0"
Comp "Inferno Embedded"
Comment1 "Licensed under the TAPR Open Hardware License (www.tapr.org/OHL)"
Comment2 "Copyright © 2016 Inferno Embedded"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L CONN_01X05 P3
U 1 1 58246252
P 9550 2400
F 0 "P3" H 9550 2700 50  0000 C CNN
F 1 "CONN_01X05" V 9650 2400 50  0000 C CNN
F 2 "2EDCK-Screw-Connectors:2EDCK-5.08-5PIN" H 9550 2400 50  0001 C CNN
F 3 "" H 9550 2400 50  0000 C CNN
	1    9550 2400
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P4
U 1 1 58246327
P 10350 4000
F 0 "P4" H 10350 4150 50  0000 C CNN
F 1 "DC_IN" V 10450 4000 50  0000 C CNN
F 2 "2EDCK-Screw-Connectors:2EDCK-5.08-2PIN" H 10350 4000 50  0001 C CNN
F 3 "" H 10350 4000 50  0000 C CNN
	1    10350 4000
	1    0    0    -1  
$EndComp
$Comp
L BARREL_JACK CON1
U 1 1 5824638C
P 10500 4550
F 0 "CON1" H 10500 4800 50  0000 C CNN
F 1 "BARREL_JACK" H 10500 4350 50  0000 C CNN
F 2 "Connect:BARREL_JACK" H 10500 4550 50  0001 C CNN
F 3 "" H 10500 4550 50  0000 C CNN
	1    10500 4550
	-1   0    0    1   
$EndComp
Wire Wire Line
	10150 3950 10000 3950
Wire Wire Line
	10000 3950 10000 4750
Wire Wire Line
	10000 4450 10200 4450
Wire Wire Line
	10000 4550 10200 4550
Connection ~ 10000 4450
Wire Wire Line
	10150 4050 10100 4050
Wire Wire Line
	10100 3850 10100 4650
Wire Wire Line
	10100 4650 10200 4650
$Comp
L GND #PWR015
U 1 1 58246457
P 10000 4750
F 0 "#PWR015" H 10000 4500 50  0001 C CNN
F 1 "GND" H 10000 4600 50  0000 C CNN
F 2 "" H 10000 4750 50  0000 C CNN
F 3 "" H 10000 4750 50  0000 C CNN
	1    10000 4750
	1    0    0    -1  
$EndComp
Connection ~ 10000 4550
$Comp
L +48V #PWR016
U 1 1 5824648B
P 10100 3850
F 0 "#PWR016" H 10100 3700 50  0001 C CNN
F 1 "+48V" H 10100 3990 50  0000 C CNN
F 2 "" H 10100 3850 50  0000 C CNN
F 3 "" H 10100 3850 50  0000 C CNN
	1    10100 3850
	1    0    0    -1  
$EndComp
Connection ~ 10100 4050
Wire Wire Line
	8450 2500 9350 2500
Wire Wire Line
	7800 2400 9350 2400
Wire Wire Line
	7150 2300 9350 2300
$Comp
L Q_NMOS_GDS Q1
U 1 1 58246620
P 6400 2400
F 0 "Q1" H 6700 2450 50  0000 R CNN
F 1 "IRLZ44NS" H 6950 2350 50  0000 R CNN
F 2 "kicad-open-modules:D2PAK" H 6600 2500 50  0001 C CNN
F 3 "" H 6400 2400 50  0000 C CNN
	1    6400 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 2200 9350 2200
$Comp
L STM32F030R8 U2
U 3 1 58246695
P 1450 3000
F 0 "U2" H 1550 3050 50  0000 C CNN
F 1 "STM32F030R8" H 1750 3150 50  0001 C CNN
F 2 "Housings_QFP:LQFP-64_10x10mm_Pitch0.5mm" H 1650 3250 50  0001 C CIN
F 3 "" H 4750 500 50  0000 C CNN
	3    1450 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 2700 6850 2500
Wire Wire Line
	5950 2700 6850 2700
Wire Wire Line
	7500 2800 7500 2600
Wire Wire Line
	5950 2800 7500 2800
Wire Wire Line
	8150 2900 8150 2700
$Comp
L +48V #PWR017
U 1 1 582469D7
P 9300 2000
F 0 "#PWR017" H 9300 1850 50  0001 C CNN
F 1 "+48V" H 9300 2140 50  0000 C CNN
F 2 "" H 9300 2000 50  0000 C CNN
F 3 "" H 9300 2000 50  0000 C CNN
	1    9300 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 2600 9300 2600
Wire Wire Line
	9300 2600 9300 2000
$Comp
L GND #PWR018
U 1 1 58246A23
P 8450 3200
F 0 "#PWR018" H 8450 2950 50  0001 C CNN
F 1 "GND" H 8450 3050 50  0000 C CNN
F 2 "" H 8450 3200 50  0000 C CNN
F 3 "" H 8450 3200 50  0000 C CNN
	1    8450 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 2900 8450 3200
Wire Wire Line
	7800 2800 7800 3100
Wire Wire Line
	6500 3100 8450 3100
Connection ~ 8450 3100
Wire Wire Line
	7150 2700 7150 3100
Connection ~ 7800 3100
Wire Wire Line
	6500 2600 6500 3100
Connection ~ 7150 3100
$Comp
L Q_NMOS_GDS Q2
U 1 1 582577B9
P 7050 2500
F 0 "Q2" H 7350 2550 50  0000 R CNN
F 1 "IRLZ44NS" H 7600 2450 50  0000 R CNN
F 2 "kicad-open-modules:D2PAK" H 7250 2600 50  0001 C CNN
F 3 "" H 7050 2500 50  0000 C CNN
	1    7050 2500
	1    0    0    -1  
$EndComp
$Comp
L Q_NMOS_GDS Q4
U 1 1 582577F3
P 7700 2600
F 0 "Q4" H 8000 2650 50  0000 R CNN
F 1 "IRLZ44NS" H 8250 2550 50  0000 R CNN
F 2 "kicad-open-modules:D2PAK" H 7900 2700 50  0001 C CNN
F 3 "" H 7700 2600 50  0000 C CNN
	1    7700 2600
	1    0    0    -1  
$EndComp
$Comp
L Q_NMOS_GDS Q6
U 1 1 58257824
P 8350 2700
F 0 "Q6" H 8650 2750 50  0000 R CNN
F 1 "IRLZ44NS" H 8900 2650 50  0000 R CNN
F 2 "kicad-open-modules:D2PAK" H 8550 2800 50  0001 C CNN
F 3 "" H 8350 2700 50  0000 C CNN
	1    8350 2700
	1    0    0    -1  
$EndComp
$Comp
L STM32F030R8 U2
U 1 1 58257933
P 900 5350
F 0 "U2" H 1000 5400 50  0000 C CNN
F 1 "STM32F030R8" H 1200 5500 50  0001 C CNN
F 2 "Housings_QFP:LQFP-64_10x10mm_Pitch0.5mm" H 1100 5600 50  0001 C CIN
F 3 "" H 4200 2850 50  0000 C CNN
	1    900  5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 6850 4650 6850
Wire Wire Line
	4350 6950 4650 6950
$Comp
L CONN_01X05 P5
U 1 1 58257B4D
P 9600 5450
F 0 "P5" H 9600 5750 50  0000 C CNN
F 1 "CONN_01X05" V 9700 5450 50  0000 C CNN
F 2 "2EDCK-Screw-Connectors:2EDCK-5.08-5PIN" H 9600 5450 50  0001 C CNN
F 3 "" H 9600 5450 50  0000 C CNN
	1    9600 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 5550 9400 5550
Wire Wire Line
	7850 5450 9400 5450
Wire Wire Line
	7200 5350 9400 5350
$Comp
L Q_NMOS_GDS Q3
U 1 1 58257B78
P 6450 5450
F 0 "Q3" H 6750 5500 50  0000 R CNN
F 1 "IRLZ44NS" H 7000 5400 50  0000 R CNN
F 2 "kicad-open-modules:D2PAK" H 6650 5550 50  0001 C CNN
F 3 "" H 6450 5450 50  0000 C CNN
	1    6450 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 5250 9400 5250
Wire Wire Line
	6900 5750 6900 5550
Wire Wire Line
	5950 5750 6900 5750
Wire Wire Line
	7550 5850 7550 5650
Wire Wire Line
	5950 5850 7550 5850
Wire Wire Line
	8200 5950 8200 5750
Wire Wire Line
	5950 5950 8200 5950
$Comp
L +48V #PWR019
U 1 1 58257B8C
P 9350 5050
F 0 "#PWR019" H 9350 4900 50  0001 C CNN
F 1 "+48V" H 9350 5190 50  0000 C CNN
F 2 "" H 9350 5050 50  0000 C CNN
F 3 "" H 9350 5050 50  0000 C CNN
	1    9350 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 5650 9350 5650
Wire Wire Line
	9350 5650 9350 5050
$Comp
L GND #PWR020
U 1 1 58257B94
P 8500 6250
F 0 "#PWR020" H 8500 6000 50  0001 C CNN
F 1 "GND" H 8500 6100 50  0000 C CNN
F 2 "" H 8500 6250 50  0000 C CNN
F 3 "" H 8500 6250 50  0000 C CNN
	1    8500 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 5950 8500 6250
Wire Wire Line
	7850 5850 7850 6150
Wire Wire Line
	6550 6150 8500 6150
Connection ~ 8500 6150
Wire Wire Line
	7200 5750 7200 6150
Connection ~ 7850 6150
Wire Wire Line
	6550 5650 6550 6150
Connection ~ 7200 6150
$Comp
L Q_NMOS_GDS Q5
U 1 1 58257BA2
P 7100 5550
F 0 "Q5" H 7400 5600 50  0000 R CNN
F 1 "IRLZ44NS" H 7650 5500 50  0000 R CNN
F 2 "kicad-open-modules:D2PAK" H 7300 5650 50  0001 C CNN
F 3 "" H 7100 5550 50  0000 C CNN
	1    7100 5550
	1    0    0    -1  
$EndComp
$Comp
L Q_NMOS_GDS Q7
U 1 1 58257BA8
P 7750 5650
F 0 "Q7" H 8050 5700 50  0000 R CNN
F 1 "IRLZ44NS" H 8300 5600 50  0000 R CNN
F 2 "kicad-open-modules:D2PAK" H 7950 5750 50  0001 C CNN
F 3 "" H 7750 5650 50  0000 C CNN
	1    7750 5650
	1    0    0    -1  
$EndComp
$Comp
L Q_NMOS_GDS Q8
U 1 1 58257BAE
P 8400 5750
F 0 "Q8" H 8700 5800 50  0000 R CNN
F 1 "IRLZ44NS" H 8950 5700 50  0000 R CNN
F 2 "kicad-open-modules:D2PAK" H 8600 5850 50  0001 C CNN
F 3 "" H 8400 5750 50  0000 C CNN
	1    8400 5750
	1    0    0    -1  
$EndComp
Text HLabel 4650 6850 2    60   Input ~ 0
SWDAT
Text HLabel 4650 6950 2    60   Input ~ 0
SWCLK
Text HLabel 4700 5750 2    60   Input ~ 0
UART_TX
Text HLabel 4700 5850 2    60   Input ~ 0
UART_RX
Wire Wire Line
	4700 5850 4350 5850
Wire Wire Line
	4350 5750 4700 5750
$Comp
L CONN_01X05 P7
U 1 1 58BD3A32
P 9700 3650
F 0 "P7" H 9700 3950 50  0000 C CNN
F 1 "CONN_01X05" V 9800 3650 50  0000 C CNN
F 2 "2EDCK-Screw-Connectors:2EDCK-5.08-5PIN" H 9700 3650 50  0001 C CNN
F 3 "" H 9700 3650 50  0000 C CNN
	1    9700 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 3750 9500 3750
Wire Wire Line
	7950 3650 9500 3650
Wire Wire Line
	7300 3550 9500 3550
$Comp
L Q_NMOS_GDS Q10
U 1 1 58BD3A3B
P 6550 3650
F 0 "Q10" H 6850 3700 50  0000 R CNN
F 1 "IRLZ44NS" H 7100 3600 50  0000 R CNN
F 2 "kicad-open-modules:D2PAK" H 6750 3750 50  0001 C CNN
F 3 "" H 6550 3650 50  0000 C CNN
	1    6550 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 3450 9500 3450
Wire Wire Line
	7000 3950 7000 3750
Wire Wire Line
	7650 4050 7650 3850
Wire Wire Line
	5950 4050 7650 4050
Wire Wire Line
	8300 4150 8300 3950
Wire Wire Line
	5950 4150 8300 4150
$Comp
L +48V #PWR021
U 1 1 58BD3A4F
P 9450 3250
F 0 "#PWR021" H 9450 3100 50  0001 C CNN
F 1 "+48V" H 9450 3390 50  0000 C CNN
F 2 "" H 9450 3250 50  0000 C CNN
F 3 "" H 9450 3250 50  0000 C CNN
	1    9450 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 3850 9450 3850
Wire Wire Line
	9450 3850 9450 3250
$Comp
L GND #PWR022
U 1 1 58BD3A57
P 8600 4450
F 0 "#PWR022" H 8600 4200 50  0001 C CNN
F 1 "GND" H 8600 4300 50  0000 C CNN
F 2 "" H 8600 4450 50  0000 C CNN
F 3 "" H 8600 4450 50  0000 C CNN
	1    8600 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 4150 8600 4450
Wire Wire Line
	7950 4050 7950 4350
Wire Wire Line
	6650 4350 8600 4350
Connection ~ 8600 4350
Wire Wire Line
	7300 3950 7300 4350
Connection ~ 7950 4350
Wire Wire Line
	6650 3850 6650 4350
Connection ~ 7300 4350
$Comp
L Q_NMOS_GDS Q12
U 1 1 58BD3A65
P 7200 3750
F 0 "Q12" H 7500 3800 50  0000 R CNN
F 1 "IRLZ44NS" H 7750 3700 50  0000 R CNN
F 2 "kicad-open-modules:D2PAK" H 7400 3850 50  0001 C CNN
F 3 "" H 7200 3750 50  0000 C CNN
	1    7200 3750
	1    0    0    -1  
$EndComp
$Comp
L Q_NMOS_GDS Q14
U 1 1 58BD3A6B
P 7850 3850
F 0 "Q14" H 8150 3900 50  0000 R CNN
F 1 "IRLZ44NS" H 8400 3800 50  0000 R CNN
F 2 "kicad-open-modules:D2PAK" H 8050 3950 50  0001 C CNN
F 3 "" H 7850 3850 50  0000 C CNN
	1    7850 3850
	1    0    0    -1  
$EndComp
$Comp
L Q_NMOS_GDS Q16
U 1 1 58BD3A71
P 8500 3950
F 0 "Q16" H 8800 4000 50  0000 R CNN
F 1 "IRLZ44NS" H 9050 3900 50  0000 R CNN
F 2 "kicad-open-modules:D2PAK" H 8700 4050 50  0001 C CNN
F 3 "" H 8500 3950 50  0000 C CNN
	1    8500 3950
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X05 P2
U 1 1 58BD3E72
P 9550 1150
F 0 "P2" H 9550 1450 50  0000 C CNN
F 1 "CONN_01X05" V 9650 1150 50  0000 C CNN
F 2 "2EDCK-Screw-Connectors:2EDCK-5.08-5PIN" H 9550 1150 50  0001 C CNN
F 3 "" H 9550 1150 50  0000 C CNN
	1    9550 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 1250 9350 1250
Wire Wire Line
	7800 1150 9350 1150
Wire Wire Line
	7150 1050 9350 1050
$Comp
L Q_NMOS_GDS Q9
U 1 1 58BD3E7B
P 6400 1150
F 0 "Q9" H 6700 1200 50  0000 R CNN
F 1 "IRLZ44NS" H 6950 1100 50  0000 R CNN
F 2 "kicad-open-modules:D2PAK" H 6600 1250 50  0001 C CNN
F 3 "" H 6400 1150 50  0000 C CNN
	1    6400 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 950  9350 950 
Wire Wire Line
	6850 1450 6850 1250
Wire Wire Line
	7500 1550 7500 1350
Wire Wire Line
	8150 1650 8150 1450
$Comp
L +48V #PWR023
U 1 1 58BD3E8F
P 9300 750
F 0 "#PWR023" H 9300 600 50  0001 C CNN
F 1 "+48V" H 9300 890 50  0000 C CNN
F 2 "" H 9300 750 50  0000 C CNN
F 3 "" H 9300 750 50  0000 C CNN
	1    9300 750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 1350 9300 1350
Wire Wire Line
	9300 1350 9300 750 
$Comp
L GND #PWR024
U 1 1 58BD3E97
P 8450 1950
F 0 "#PWR024" H 8450 1700 50  0001 C CNN
F 1 "GND" H 8450 1800 50  0000 C CNN
F 2 "" H 8450 1950 50  0000 C CNN
F 3 "" H 8450 1950 50  0000 C CNN
	1    8450 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 1650 8450 1950
Wire Wire Line
	7800 1550 7800 1850
Wire Wire Line
	6500 1850 8450 1850
Connection ~ 8450 1850
Wire Wire Line
	7150 1450 7150 1850
Connection ~ 7800 1850
Wire Wire Line
	6500 1350 6500 1850
Connection ~ 7150 1850
$Comp
L Q_NMOS_GDS Q11
U 1 1 58BD3EA5
P 7050 1250
F 0 "Q11" H 7350 1300 50  0000 R CNN
F 1 "IRLZ44NS" H 7600 1200 50  0000 R CNN
F 2 "kicad-open-modules:D2PAK" H 7250 1350 50  0001 C CNN
F 3 "" H 7050 1250 50  0000 C CNN
	1    7050 1250
	1    0    0    -1  
$EndComp
$Comp
L Q_NMOS_GDS Q13
U 1 1 58BD3EAB
P 7700 1350
F 0 "Q13" H 8000 1400 50  0000 R CNN
F 1 "IRLZ44NS" H 8250 1300 50  0000 R CNN
F 2 "kicad-open-modules:D2PAK" H 7900 1450 50  0001 C CNN
F 3 "" H 7700 1350 50  0000 C CNN
	1    7700 1350
	1    0    0    -1  
$EndComp
$Comp
L Q_NMOS_GDS Q15
U 1 1 58BD3EB1
P 8350 1450
F 0 "Q15" H 8650 1500 50  0000 R CNN
F 1 "IRLZ44NS" H 8900 1400 50  0000 R CNN
F 2 "kicad-open-modules:D2PAK" H 8550 1550 50  0001 C CNN
F 3 "" H 8350 1450 50  0000 C CNN
	1    8350 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 5450 6250 5450
Wire Wire Line
	5950 3950 7000 3950
Wire Wire Line
	5950 3650 6350 3650
Wire Wire Line
	5950 2900 8150 2900
Wire Wire Line
	5950 2400 6200 2400
Wire Wire Line
	5950 1650 8150 1650
Wire Wire Line
	5950 1550 7500 1550
Wire Wire Line
	5950 1450 6850 1450
Wire Wire Line
	5950 1150 6200 1150
Text Label 5950 3650 0    60   ~ 0
CHAN0_R
Text Label 5950 5450 0    60   ~ 0
CHAN1_R
Text Label 5950 2400 0    60   ~ 0
CHAN2_R
Text Label 5950 1150 0    60   ~ 0
CHAN3_R
Text Label 5950 1450 0    60   ~ 0
CHAN3_G
Text Label 5950 1550 0    60   ~ 0
CHAN3_B
Text Label 5950 1650 0    60   ~ 0
CHAN3_W
Text Label 5950 2700 0    60   ~ 0
CHAN2_G
Text Label 5950 2800 0    60   ~ 0
CHAN2_B
Text Label 5950 2900 0    60   ~ 0
CHAN2_W
Text Label 5950 3950 0    60   ~ 0
CHAN0_G
Text Label 5950 4050 0    60   ~ 0
CHAN0_B
Text Label 5950 4150 0    60   ~ 0
CHAN0_W
Text Label 5950 5750 0    60   ~ 0
CHAN0_G
Text Label 5950 5850 0    60   ~ 0
CHAN0_B
Text Label 5950 5950 0    60   ~ 0
CHAN0_W
Text HLabel 5200 7450 0    60   Input ~ 0
1W_DATA
$Comp
L STM32F030R8 U?
U 2 1 58C1768E
P 950 750
F 0 "U?" H 1050 800 50  0000 C CNN
F 1 "STM32F030R8" H 1250 900 50  0001 C CNN
F 2 "LQFP-64" H 1150 1000 50  0001 C CIN
F 3 "" H 4250 -1750 50  0000 C CNN
	2    950  750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 1250 3900 1250
Wire Wire Line
	3500 1450 3900 1450
Wire Wire Line
	3500 1650 3900 1650
Wire Wire Line
	3500 4400 3800 4400
Text Label 3900 1650 0    60   ~ 0
CHAN0_R
Text Label 3900 1450 0    60   ~ 0
CHAN0_G
Text Label 3900 1250 0    60   ~ 0
CHAN0_B
Text Label 3800 4400 0    60   ~ 0
CHAN0_W
$EndSCHEMATC
