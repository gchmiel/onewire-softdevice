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
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title "1 Wire LED Controller"
Date "2017-03-09"
Rev "1.0"
Comp "Inferno Embedded"
Comment1 "Licensed under the TAPR Open Hardware License (www.tapr.org/OHL)"
Comment2 "Copyright © 2017 Inferno Embedded"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L RJ45 J1
U 1 1 5824359A
P 12000 3700
F 0 "J1" H 12200 4200 50  0000 C CNN
F 1 "RJ45" H 11850 4200 50  0000 C CNN
F 2 "RJ45:RJ45-ChinaSMD" H 12000 3700 50  0001 C CNN
F 3 "" H 12000 3700 50  0000 C CNN
	1    12000 3700
	1    0    0    -1  
$EndComp
$Comp
L STM32F030R8 U2
U 4 1 58244F90
P 13250 8400
F 0 "U2" H 13350 8450 50  0000 C CNN
F 1 "STM32F030R8" H 13550 8550 50  0001 C CNN
F 2 "Housings_QFP:LQFP-64_10x10mm_Pitch0.5mm" H 13450 8650 50  0001 C CIN
F 3 "" H 16550 5900 50  0000 C CNN
	4    13250 8400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 5824517A
P 12350 4650
F 0 "#PWR01" H 12350 4400 50  0001 C CNN
F 1 "GND" H 12350 4500 50  0000 C CNN
F 2 "" H 12350 4650 50  0000 C CNN
F 3 "" H 12350 4650 50  0000 C CNN
	1    12350 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	11650 4150 11650 4300
Wire Wire Line
	11650 4300 13600 4300
Wire Wire Line
	12350 4150 12350 4650
Connection ~ 12350 4300
Wire Wire Line
	11850 4150 11850 4300
Connection ~ 11850 4300
Wire Wire Line
	12050 4150 12050 4300
Connection ~ 12050 4300
$Comp
L +5V #PWR02
U 1 1 582452BF
P 11250 3900
F 0 "#PWR02" H 11250 3750 50  0001 C CNN
F 1 "+5V" H 11250 4040 50  0000 C CNN
F 2 "" H 11250 3900 50  0000 C CNN
F 3 "" H 11250 3900 50  0000 C CNN
	1    11250 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	11750 4150 11750 4250
Wire Wire Line
	11250 4250 12800 4250
Wire Wire Line
	11250 4250 11250 3900
$Comp
L GND #PWR03
U 1 1 58245334
P 13950 9500
F 0 "#PWR03" H 13950 9250 50  0001 C CNN
F 1 "GND" H 13950 9350 50  0000 C CNN
F 2 "" H 13950 9500 50  0000 C CNN
F 3 "" H 13950 9500 50  0000 C CNN
	1    13950 9500
	1    0    0    -1  
$EndComp
Wire Wire Line
	13950 9200 13950 9500
Wire Wire Line
	13650 9200 13650 9300
Wire Wire Line
	13100 9300 13950 9300
Connection ~ 13950 9300
Wire Wire Line
	13750 9200 13750 9300
Connection ~ 13750 9300
$Comp
L +3.3V #PWR04
U 1 1 582453EE
P 14500 7900
F 0 "#PWR04" H 14500 7750 50  0001 C CNN
F 1 "+3.3V" H 14500 8040 50  0000 C CNN
F 2 "" H 14500 7900 50  0000 C CNN
F 3 "" H 14500 7900 50  0000 C CNN
	1    14500 7900
	1    0    0    -1  
$EndComp
Wire Wire Line
	14500 7900 14500 8250
Wire Wire Line
	14300 8250 14300 8050
Connection ~ 14500 8050
Wire Wire Line
	14200 8250 14200 8050
Connection ~ 14300 8050
Wire Wire Line
	14100 8250 14100 8050
Connection ~ 14200 8050
$Comp
L CONN_02X05 P1
U 1 1 58245605
P 11100 7250
F 0 "P1" H 11100 7550 50  0000 C CNN
F 1 "CONN_02X05" H 11100 6950 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_SMT_02x05" H 11100 6050 50  0001 C CNN
F 3 "" H 11100 6050 50  0000 C CNN
	1    11100 7250
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR05
U 1 1 582456BE
P 10700 6950
F 0 "#PWR05" H 10700 6800 50  0001 C CNN
F 1 "+3.3V" H 10700 7090 50  0000 C CNN
F 2 "" H 10700 6950 50  0000 C CNN
F 3 "" H 10700 6950 50  0000 C CNN
	1    10700 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	10700 6950 10700 7050
Wire Wire Line
	10700 7050 10850 7050
$Comp
L GND #PWR06
U 1 1 58245733
P 10750 7550
F 0 "#PWR06" H 10750 7300 50  0001 C CNN
F 1 "GND" H 10750 7400 50  0000 C CNN
F 2 "" H 10750 7550 50  0000 C CNN
F 3 "" H 10750 7550 50  0000 C CNN
	1    10750 7550
	1    0    0    -1  
$EndComp
Wire Wire Line
	10850 7150 10750 7150
Wire Wire Line
	10750 7150 10750 7550
Wire Wire Line
	10850 7250 10750 7250
Connection ~ 10750 7250
Wire Wire Line
	10850 7450 10750 7450
Connection ~ 10750 7450
Wire Wire Line
	11350 7450 11750 7450
Wire Wire Line
	11950 4150 11950 4500
Wire Wire Line
	11450 4500 13000 4500
Text Label 11450 4500 0    60   ~ 0
1W-DATA
$Comp
L LP2950 U1
U 1 1 582584AD
P 14850 3450
F 0 "U1" H 15000 3254 60  0000 C CNN
F 1 "LP2950" H 14850 3650 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:TO-252-2Lead" H 14850 3450 60  0001 C CNN
F 3 "" H 14850 3450 60  0001 C CNN
	1    14850 3450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 5825857A
P 14850 3800
F 0 "#PWR07" H 14850 3550 50  0001 C CNN
F 1 "GND" H 14850 3650 50  0000 C CNN
F 2 "" H 14850 3800 50  0000 C CNN
F 3 "" H 14850 3800 50  0000 C CNN
	1    14850 3800
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR08
U 1 1 5825859A
P 14250 3000
F 0 "#PWR08" H 14250 2850 50  0001 C CNN
F 1 "+5V" H 14250 3140 50  0000 C CNN
F 2 "" H 14250 3000 50  0000 C CNN
F 3 "" H 14250 3000 50  0000 C CNN
	1    14250 3000
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR09
U 1 1 582585BA
P 15350 3300
F 0 "#PWR09" H 15350 3150 50  0001 C CNN
F 1 "+3.3V" H 15350 3440 50  0000 C CNN
F 2 "" H 15350 3300 50  0000 C CNN
F 3 "" H 15350 3300 50  0000 C CNN
	1    15350 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	15250 3400 15350 3400
Wire Wire Line
	15350 3400 15350 3300
Wire Wire Line
	14450 3400 14250 3400
Wire Wire Line
	14250 3400 14250 3300
$Comp
L CP C1
U 1 1 582587E1
P 14250 3550
F 0 "C1" H 14275 3650 50  0000 L CNN
F 1 "100uF" H 14275 3450 50  0000 L CNN
F 2 "Capacitors_SMD:c_elec_8x6.7" H 14288 3400 50  0001 C CNN
F 3 "" H 14250 3550 50  0000 C CNN
	1    14250 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	14250 3700 14250 3750
Wire Wire Line
	14250 3750 15350 3750
Wire Wire Line
	15350 3750 15350 3700
Connection ~ 14850 3750
$Comp
L C C3
U 1 1 582589CF
P 14900 8250
F 0 "C3" H 14925 8350 50  0000 L CNN
F 1 "100nF" H 14925 8150 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 14938 8100 50  0001 C CNN
F 3 "" H 14900 8250 50  0000 C CNN
	1    14900 8250
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 58258CB3
P 15250 8250
F 0 "C4" H 15275 8350 50  0000 L CNN
F 1 "100nF" H 15275 8150 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 15288 8100 50  0001 C CNN
F 3 "" H 15250 8250 50  0000 C CNN
	1    15250 8250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 58258D67
P 14900 8500
F 0 "#PWR010" H 14900 8250 50  0001 C CNN
F 1 "GND" H 14900 8350 50  0000 C CNN
F 2 "" H 14900 8500 50  0000 C CNN
F 3 "" H 14900 8500 50  0000 C CNN
	1    14900 8500
	1    0    0    -1  
$EndComp
Wire Wire Line
	14900 8400 14900 8500
Wire Wire Line
	15250 8400 15250 8450
Connection ~ 14900 8450
Wire Wire Line
	15250 8050 15250 8100
Wire Wire Line
	14900 8100 14900 8050
Connection ~ 14900 8050
$Comp
L C C2
U 1 1 58259010
P 15350 3550
F 0 "C2" H 15375 3650 50  0000 L CNN
F 1 "4.7uF" H 15375 3450 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 15388 3400 50  0001 C CNN
F 3 "" H 15350 3550 50  0000 C CNN
	1    15350 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	12550 4300 12550 3350
$Comp
L +3.3V #PWR011
U 1 1 5827B1CE
P 14950 6850
F 0 "#PWR011" H 14950 6700 50  0001 C CNN
F 1 "+3.3V" H 14950 6990 50  0000 C CNN
F 2 "" H 14950 6850 50  0000 C CNN
F 3 "" H 14950 6850 50  0000 C CNN
	1    14950 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	15050 6950 14950 6950
Wire Wire Line
	14950 6950 14950 6850
$Comp
L GND #PWR012
U 1 1 5827B41B
P 15000 7300
F 0 "#PWR012" H 15000 7050 50  0001 C CNN
F 1 "GND" H 15000 7150 50  0000 C CNN
F 2 "" H 15000 7300 50  0000 C CNN
F 3 "" H 15000 7300 50  0000 C CNN
	1    15000 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	15050 7250 15000 7250
Wire Wire Line
	15000 7250 15000 7300
$Comp
L RJ45 J2
U 1 1 5827B786
P 13050 3700
F 0 "J2" H 13250 4200 50  0000 C CNN
F 1 "RJ45" H 12900 4200 50  0000 C CNN
F 2 "RJ45:RJ45-ChinaSMD" H 13050 3700 50  0001 C CNN
F 3 "" H 13050 3700 50  0000 C CNN
	1    13050 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	13600 4300 13600 3350
Connection ~ 12550 4300
Wire Wire Line
	12700 4150 12700 4300
Connection ~ 12700 4300
Wire Wire Line
	12900 4150 12900 4300
Connection ~ 12900 4300
Wire Wire Line
	13100 4150 13100 4300
Connection ~ 13100 4300
Wire Wire Line
	13400 4150 13400 4300
Connection ~ 13400 4300
Wire Wire Line
	12800 4250 12800 4150
Connection ~ 11750 4250
Wire Wire Line
	13100 8800 13100 9300
Connection ~ 13650 9300
Wire Wire Line
	11750 8700 13100 8700
Wire Wire Line
	11750 7450 11750 8700
Wire Wire Line
	14100 8050 15600 8050
Wire Wire Line
	14900 8450 15600 8450
$Comp
L C C5
U 1 1 5827DCB8
P 15600 8250
F 0 "C5" H 15625 8350 50  0000 L CNN
F 1 "100nF" H 15625 8150 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 15638 8100 50  0001 C CNN
F 3 "" H 15600 8250 50  0000 C CNN
	1    15600 8250
	1    0    0    -1  
$EndComp
Wire Wire Line
	15600 8050 15600 8100
Connection ~ 15250 8050
Wire Wire Line
	15600 8450 15600 8400
Connection ~ 15250 8450
Wire Wire Line
	13000 4500 13000 4150
Connection ~ 11950 4500
Wire Wire Line
	12150 4150 12150 4350
Wire Wire Line
	12150 4350 13200 4350
Wire Wire Line
	13200 4350 13200 4150
Wire Wire Line
	12250 4150 12250 4400
Wire Wire Line
	12250 4400 13300 4400
Wire Wire Line
	13300 4400 13300 4150
Wire Wire Line
	14850 3800 14850 3700
$Comp
L STM32F030R8 U2
U 5 1 582835BD
P 1800 9350
F 0 "U2" H 1900 9400 50  0000 C CNN
F 1 "STM32F030R8" H 2100 9500 50  0001 C CNN
F 2 "Housings_QFP:LQFP-64_10x10mm_Pitch0.5mm" H 2000 9600 50  0001 C CIN
F 3 "" H 5100 6850 50  0000 C CNN
	5    1800 9350
	1    0    0    -1  
$EndComp
Wire Wire Line
	14600 7050 15050 7050
Wire Wire Line
	15050 7150 14600 7150
Connection ~ 14250 3400
Connection ~ 15350 3400
$Comp
L R R1
U 1 1 58B28CDC
P 14250 3150
F 0 "R1" V 14330 3150 50  0000 C CNN
F 1 "33R" V 14250 3150 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 14180 3150 50  0001 C CNN
F 3 "" H 14250 3150 50  0000 C CNN
	1    14250 3150
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X05 P6
U 1 1 58B297A3
P 15250 7050
F 0 "P6" H 15250 7350 50  0000 C CNN
F 1 "CONN_01X05" V 15350 7050 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x05_Pitch2.54mm" H 15250 7050 50  0001 C CNN
F 3 "" H 15250 7050 50  0000 C CNN
	1    15250 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	15050 6850 15050 6500
Text Label 15050 6500 0    60   ~ 0
1W-DATA
$Comp
L JACK_STEREO J3
U 1 1 58C12D07
P 7700 8300
F 0 "J3" H 7325 8300 50  0000 R CNN
F 1 "JACK_STEREO" H 7700 8550 50  0000 C CNN
F 2 "w_conn_av:jack_3.5_pj313d-smt" H 7700 8300 60  0001 C CNN
F 3 "" H 7700 8300 60  0001 C CNN
	1    7700 8300
	-1   0    0    1   
$EndComp
$Comp
L +5V #PWR013
U 1 1 58C12FE1
P 7100 8400
F 0 "#PWR013" H 7100 8250 50  0001 C CNN
F 1 "+5V" H 7100 8540 50  0000 C CNN
F 2 "" H 7100 8400 50  0000 C CNN
F 3 "" H 7100 8400 50  0000 C CNN
	1    7100 8400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 8400 7100 8450
Wire Wire Line
	7100 8450 7350 8450
Wire Wire Line
	7350 8250 7200 8250
Wire Wire Line
	7200 8250 7200 8150
Wire Wire Line
	7200 8150 6200 8150
$Comp
L GND #PWR014
U 1 1 58C13FF2
P 7200 7800
F 0 "#PWR014" H 7200 7550 50  0001 C CNN
F 1 "GND" H 7200 7650 50  0000 C CNN
F 2 "" H 7200 7800 50  0000 C CNN
F 3 "" H 7200 7800 50  0000 C CNN
	1    7200 7800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 7800 7200 7750
Wire Wire Line
	7200 7750 7350 7750
Wire Wire Line
	7350 7750 7350 8150
$Comp
L CONN_01X05 P3
U 1 1 58C1BA53
P 9800 3300
F 0 "P3" H 9800 3600 50  0000 C CNN
F 1 "CONN_01X05" V 9900 3300 50  0000 C CNN
F 2 "2EDCK-Screw-Connectors:2EDCK-5.08-5PIN" H 9800 3300 50  0001 C CNN
F 3 "" H 9800 3300 50  0000 C CNN
	1    9800 3300
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P4
U 1 1 58C1BA5A
P 10600 4900
F 0 "P4" H 10600 5050 50  0000 C CNN
F 1 "DC_IN" V 10700 4900 50  0000 C CNN
F 2 "2EDCK-Screw-Connectors:2EDCK-5.08-2PIN" H 10600 4900 50  0001 C CNN
F 3 "" H 10600 4900 50  0000 C CNN
	1    10600 4900
	1    0    0    -1  
$EndComp
$Comp
L BARREL_JACK CON1
U 1 1 58C1BA61
P 10750 5450
F 0 "CON1" H 10750 5700 50  0000 C CNN
F 1 "BARREL_JACK" H 10750 5250 50  0000 C CNN
F 2 "Connect:BARREL_JACK" H 10750 5450 50  0001 C CNN
F 3 "" H 10750 5450 50  0000 C CNN
	1    10750 5450
	-1   0    0    1   
$EndComp
Wire Wire Line
	10400 4850 10250 4850
Wire Wire Line
	10250 4850 10250 5650
Wire Wire Line
	10250 5350 10450 5350
Wire Wire Line
	10250 5450 10450 5450
Connection ~ 10250 5350
Wire Wire Line
	10400 4950 10350 4950
Wire Wire Line
	10350 4750 10350 5550
Wire Wire Line
	10350 5550 10450 5550
$Comp
L GND #PWR015
U 1 1 58C1BA70
P 10250 5650
F 0 "#PWR015" H 10250 5400 50  0001 C CNN
F 1 "GND" H 10250 5500 50  0000 C CNN
F 2 "" H 10250 5650 50  0000 C CNN
F 3 "" H 10250 5650 50  0000 C CNN
	1    10250 5650
	1    0    0    -1  
$EndComp
Connection ~ 10250 5450
$Comp
L +48V #PWR016
U 1 1 58C1BA77
P 10350 4750
F 0 "#PWR016" H 10350 4600 50  0001 C CNN
F 1 "+48V" H 10350 4890 50  0000 C CNN
F 2 "" H 10350 4750 50  0000 C CNN
F 3 "" H 10350 4750 50  0000 C CNN
	1    10350 4750
	1    0    0    -1  
$EndComp
Connection ~ 10350 4950
Wire Wire Line
	8700 3400 9600 3400
Wire Wire Line
	8050 3300 9600 3300
Wire Wire Line
	7400 3200 9600 3200
$Comp
L Q_NMOS_GDS Q1
U 1 1 58C1BA81
P 6650 3300
F 0 "Q1" H 6950 3350 50  0000 R CNN
F 1 "IRLZ44NS" H 7200 3250 50  0000 R CNN
F 2 "kicad-open-modules:D2PAK" H 6850 3400 50  0001 C CNN
F 3 "" H 6650 3300 50  0000 C CNN
	1    6650 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 3100 9600 3100
$Comp
L STM32F030R8 U?
U 3 1 58C1BA89
P 1700 3900
AR Path="/582461B9/58C1BA89" Ref="U?"  Part="3" 
AR Path="/58C1BA89" Ref="U2"  Part="3" 
F 0 "U2" H 1800 3950 50  0000 C CNN
F 1 "STM32F030R8" H 2000 4050 50  0001 C CNN
F 2 "Housings_QFP:LQFP-64_10x10mm_Pitch0.5mm" H 1900 4150 50  0001 C CIN
F 3 "" H 5000 1400 50  0000 C CNN
	3    1700 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 3600 7100 3400
Wire Wire Line
	6200 3600 7100 3600
Wire Wire Line
	7750 3700 7750 3500
Wire Wire Line
	6200 3700 7750 3700
Wire Wire Line
	8400 3800 8400 3600
$Comp
L +48V #PWR017
U 1 1 58C1BA95
P 9550 2900
F 0 "#PWR017" H 9550 2750 50  0001 C CNN
F 1 "+48V" H 9550 3040 50  0000 C CNN
F 2 "" H 9550 2900 50  0000 C CNN
F 3 "" H 9550 2900 50  0000 C CNN
	1    9550 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 3500 9550 3500
Wire Wire Line
	9550 3500 9550 2900
$Comp
L GND #PWR018
U 1 1 58C1BA9D
P 8700 4100
F 0 "#PWR018" H 8700 3850 50  0001 C CNN
F 1 "GND" H 8700 3950 50  0000 C CNN
F 2 "" H 8700 4100 50  0000 C CNN
F 3 "" H 8700 4100 50  0000 C CNN
	1    8700 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 3800 8700 4100
Wire Wire Line
	8050 3700 8050 4000
Wire Wire Line
	6750 4000 8700 4000
Connection ~ 8700 4000
Wire Wire Line
	7400 3600 7400 4000
Connection ~ 8050 4000
Wire Wire Line
	6750 3500 6750 4000
Connection ~ 7400 4000
$Comp
L Q_NMOS_GDS Q2
U 1 1 58C1BAAB
P 7300 3400
F 0 "Q2" H 7600 3450 50  0000 R CNN
F 1 "IRLZ44NS" H 7850 3350 50  0000 R CNN
F 2 "kicad-open-modules:D2PAK" H 7500 3500 50  0001 C CNN
F 3 "" H 7300 3400 50  0000 C CNN
	1    7300 3400
	1    0    0    -1  
$EndComp
$Comp
L Q_NMOS_GDS Q4
U 1 1 58C1BAB2
P 7950 3500
F 0 "Q4" H 8250 3550 50  0000 R CNN
F 1 "IRLZ44NS" H 8500 3450 50  0000 R CNN
F 2 "kicad-open-modules:D2PAK" H 8150 3600 50  0001 C CNN
F 3 "" H 7950 3500 50  0000 C CNN
	1    7950 3500
	1    0    0    -1  
$EndComp
$Comp
L Q_NMOS_GDS Q6
U 1 1 58C1BAB9
P 8600 3600
F 0 "Q6" H 8900 3650 50  0000 R CNN
F 1 "IRLZ44NS" H 9150 3550 50  0000 R CNN
F 2 "kicad-open-modules:D2PAK" H 8800 3700 50  0001 C CNN
F 3 "" H 8600 3600 50  0000 C CNN
	1    8600 3600
	1    0    0    -1  
$EndComp
$Comp
L STM32F030R8 U?
U 1 1 58C1BAC0
P 1150 6250
AR Path="/582461B9/58C1BAC0" Ref="U?"  Part="1" 
AR Path="/58C1BAC0" Ref="U2"  Part="1" 
F 0 "U2" H 1250 6300 50  0000 C CNN
F 1 "STM32F030R8" H 1450 6400 50  0001 C CNN
F 2 "Housings_QFP:LQFP-64_10x10mm_Pitch0.5mm" H 1350 6500 50  0001 C CIN
F 3 "" H 4450 3750 50  0000 C CNN
	1    1150 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 7750 4900 7750
Wire Wire Line
	4600 7850 4900 7850
$Comp
L CONN_01X05 P7
U 1 1 58C1BAC9
P 9850 6350
F 0 "P7" H 9850 6650 50  0000 C CNN
F 1 "CONN_01X05" V 9950 6350 50  0000 C CNN
F 2 "2EDCK-Screw-Connectors:2EDCK-5.08-5PIN" H 9850 6350 50  0001 C CNN
F 3 "" H 9850 6350 50  0000 C CNN
	1    9850 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 6450 9650 6450
Wire Wire Line
	8100 6350 9650 6350
Wire Wire Line
	7450 6250 9650 6250
$Comp
L Q_NMOS_GDS Q10
U 1 1 58C1BAD3
P 6700 6350
F 0 "Q10" H 7000 6400 50  0000 R CNN
F 1 "IRLZ44NS" H 7250 6300 50  0000 R CNN
F 2 "kicad-open-modules:D2PAK" H 6900 6450 50  0001 C CNN
F 3 "" H 6700 6350 50  0000 C CNN
	1    6700 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 6150 9650 6150
Wire Wire Line
	7150 6650 7150 6450
Wire Wire Line
	6200 6650 7150 6650
Wire Wire Line
	7800 6750 7800 6550
Wire Wire Line
	6200 6750 7800 6750
Wire Wire Line
	8450 6850 8450 6650
Wire Wire Line
	6200 6850 8450 6850
$Comp
L +48V #PWR019
U 1 1 58C1BAE1
P 9600 5950
F 0 "#PWR019" H 9600 5800 50  0001 C CNN
F 1 "+48V" H 9600 6090 50  0000 C CNN
F 2 "" H 9600 5950 50  0000 C CNN
F 3 "" H 9600 5950 50  0000 C CNN
	1    9600 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 6550 9600 6550
Wire Wire Line
	9600 6550 9600 5950
$Comp
L GND #PWR020
U 1 1 58C1BAE9
P 8750 7150
F 0 "#PWR020" H 8750 6900 50  0001 C CNN
F 1 "GND" H 8750 7000 50  0000 C CNN
F 2 "" H 8750 7150 50  0000 C CNN
F 3 "" H 8750 7150 50  0000 C CNN
	1    8750 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 6850 8750 7150
Wire Wire Line
	8100 6750 8100 7050
Wire Wire Line
	6800 7050 8750 7050
Connection ~ 8750 7050
Wire Wire Line
	7450 6650 7450 7050
Connection ~ 8100 7050
Wire Wire Line
	6800 6550 6800 7050
Connection ~ 7450 7050
$Comp
L Q_NMOS_GDS Q12
U 1 1 58C1BAF7
P 7350 6450
F 0 "Q12" H 7650 6500 50  0000 R CNN
F 1 "IRLZ44NS" H 7900 6400 50  0000 R CNN
F 2 "kicad-open-modules:D2PAK" H 7550 6550 50  0001 C CNN
F 3 "" H 7350 6450 50  0000 C CNN
	1    7350 6450
	1    0    0    -1  
$EndComp
$Comp
L Q_NMOS_GDS Q14
U 1 1 58C1BAFE
P 8000 6550
F 0 "Q14" H 8300 6600 50  0000 R CNN
F 1 "IRLZ44NS" H 8550 6500 50  0000 R CNN
F 2 "kicad-open-modules:D2PAK" H 8200 6650 50  0001 C CNN
F 3 "" H 8000 6550 50  0000 C CNN
	1    8000 6550
	1    0    0    -1  
$EndComp
$Comp
L Q_NMOS_GDS Q16
U 1 1 58C1BB05
P 8650 6650
F 0 "Q16" H 8950 6700 50  0000 R CNN
F 1 "IRLZ44NS" H 9200 6600 50  0000 R CNN
F 2 "kicad-open-modules:D2PAK" H 8850 6750 50  0001 C CNN
F 3 "" H 8650 6650 50  0000 C CNN
	1    8650 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 6750 4600 6750
Wire Wire Line
	4600 6650 4950 6650
$Comp
L CONN_01X05 P5
U 1 1 58C1BB12
P 9950 4550
F 0 "P5" H 9950 4850 50  0000 C CNN
F 1 "CONN_01X05" V 10050 4550 50  0000 C CNN
F 2 "2EDCK-Screw-Connectors:2EDCK-5.08-5PIN" H 9950 4550 50  0001 C CNN
F 3 "" H 9950 4550 50  0000 C CNN
	1    9950 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 4650 9750 4650
Wire Wire Line
	8200 4550 9750 4550
Wire Wire Line
	7550 4450 9750 4450
$Comp
L Q_NMOS_GDS Q3
U 1 1 58C1BB1C
P 6800 4550
F 0 "Q3" H 7100 4600 50  0000 R CNN
F 1 "IRLZ44NS" H 7350 4500 50  0000 R CNN
F 2 "kicad-open-modules:D2PAK" H 7000 4650 50  0001 C CNN
F 3 "" H 6800 4550 50  0000 C CNN
	1    6800 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 4350 9750 4350
Wire Wire Line
	7250 4850 7250 4650
Wire Wire Line
	7900 4950 7900 4750
Wire Wire Line
	6200 4950 7900 4950
Wire Wire Line
	8550 5050 8550 4850
Wire Wire Line
	6200 5050 8550 5050
$Comp
L +48V #PWR021
U 1 1 58C1BB29
P 9700 4150
F 0 "#PWR021" H 9700 4000 50  0001 C CNN
F 1 "+48V" H 9700 4290 50  0000 C CNN
F 2 "" H 9700 4150 50  0000 C CNN
F 3 "" H 9700 4150 50  0000 C CNN
	1    9700 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 4750 9700 4750
Wire Wire Line
	9700 4750 9700 4150
$Comp
L GND #PWR022
U 1 1 58C1BB31
P 8850 5350
F 0 "#PWR022" H 8850 5100 50  0001 C CNN
F 1 "GND" H 8850 5200 50  0000 C CNN
F 2 "" H 8850 5350 50  0000 C CNN
F 3 "" H 8850 5350 50  0000 C CNN
	1    8850 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 5050 8850 5350
Wire Wire Line
	8200 4950 8200 5250
Wire Wire Line
	6900 5250 8850 5250
Connection ~ 8850 5250
Wire Wire Line
	7550 4850 7550 5250
Connection ~ 8200 5250
Wire Wire Line
	6900 4750 6900 5250
Connection ~ 7550 5250
$Comp
L Q_NMOS_GDS Q5
U 1 1 58C1BB3F
P 7450 4650
F 0 "Q5" H 7750 4700 50  0000 R CNN
F 1 "IRLZ44NS" H 8000 4600 50  0000 R CNN
F 2 "kicad-open-modules:D2PAK" H 7650 4750 50  0001 C CNN
F 3 "" H 7450 4650 50  0000 C CNN
	1    7450 4650
	1    0    0    -1  
$EndComp
$Comp
L Q_NMOS_GDS Q7
U 1 1 58C1BB46
P 8100 4750
F 0 "Q7" H 8400 4800 50  0000 R CNN
F 1 "IRLZ44NS" H 8650 4700 50  0000 R CNN
F 2 "kicad-open-modules:D2PAK" H 8300 4850 50  0001 C CNN
F 3 "" H 8100 4750 50  0000 C CNN
	1    8100 4750
	1    0    0    -1  
$EndComp
$Comp
L Q_NMOS_GDS Q8
U 1 1 58C1BB4D
P 8750 4850
F 0 "Q8" H 9050 4900 50  0000 R CNN
F 1 "IRLZ44NS" H 9300 4800 50  0000 R CNN
F 2 "kicad-open-modules:D2PAK" H 8950 4950 50  0001 C CNN
F 3 "" H 8750 4850 50  0000 C CNN
	1    8750 4850
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X05 P2
U 1 1 58C1BB54
P 9800 2050
F 0 "P2" H 9800 2350 50  0000 C CNN
F 1 "CONN_01X05" V 9900 2050 50  0000 C CNN
F 2 "2EDCK-Screw-Connectors:2EDCK-5.08-5PIN" H 9800 2050 50  0001 C CNN
F 3 "" H 9800 2050 50  0000 C CNN
	1    9800 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 2150 9600 2150
Wire Wire Line
	8050 2050 9600 2050
Wire Wire Line
	7400 1950 9600 1950
$Comp
L Q_NMOS_GDS Q9
U 1 1 58C1BB5E
P 6650 2050
F 0 "Q9" H 6950 2100 50  0000 R CNN
F 1 "IRLZ44NS" H 7200 2000 50  0000 R CNN
F 2 "kicad-open-modules:D2PAK" H 6850 2150 50  0001 C CNN
F 3 "" H 6650 2050 50  0000 C CNN
	1    6650 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 1850 9600 1850
Wire Wire Line
	7100 2350 7100 2150
Wire Wire Line
	7750 2450 7750 2250
Wire Wire Line
	8400 2550 8400 2350
$Comp
L +48V #PWR023
U 1 1 58C1BB69
P 9550 1650
F 0 "#PWR023" H 9550 1500 50  0001 C CNN
F 1 "+48V" H 9550 1790 50  0000 C CNN
F 2 "" H 9550 1650 50  0000 C CNN
F 3 "" H 9550 1650 50  0000 C CNN
	1    9550 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 2250 9550 2250
Wire Wire Line
	9550 2250 9550 1650
$Comp
L GND #PWR024
U 1 1 58C1BB71
P 8700 2850
F 0 "#PWR024" H 8700 2600 50  0001 C CNN
F 1 "GND" H 8700 2700 50  0000 C CNN
F 2 "" H 8700 2850 50  0000 C CNN
F 3 "" H 8700 2850 50  0000 C CNN
	1    8700 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 2550 8700 2850
Wire Wire Line
	8050 2450 8050 2750
Wire Wire Line
	6750 2750 8700 2750
Connection ~ 8700 2750
Wire Wire Line
	7400 2350 7400 2750
Connection ~ 8050 2750
Wire Wire Line
	6750 2250 6750 2750
Connection ~ 7400 2750
$Comp
L Q_NMOS_GDS Q11
U 1 1 58C1BB7F
P 7300 2150
F 0 "Q11" H 7600 2200 50  0000 R CNN
F 1 "IRLZ44NS" H 7850 2100 50  0000 R CNN
F 2 "kicad-open-modules:D2PAK" H 7500 2250 50  0001 C CNN
F 3 "" H 7300 2150 50  0000 C CNN
	1    7300 2150
	1    0    0    -1  
$EndComp
$Comp
L Q_NMOS_GDS Q13
U 1 1 58C1BB86
P 7950 2250
F 0 "Q13" H 8250 2300 50  0000 R CNN
F 1 "IRLZ44NS" H 8500 2200 50  0000 R CNN
F 2 "kicad-open-modules:D2PAK" H 8150 2350 50  0001 C CNN
F 3 "" H 7950 2250 50  0000 C CNN
	1    7950 2250
	1    0    0    -1  
$EndComp
$Comp
L Q_NMOS_GDS Q15
U 1 1 58C1BB8D
P 8600 2350
F 0 "Q15" H 8900 2400 50  0000 R CNN
F 1 "IRLZ44NS" H 9150 2300 50  0000 R CNN
F 2 "kicad-open-modules:D2PAK" H 8800 2450 50  0001 C CNN
F 3 "" H 8600 2350 50  0000 C CNN
	1    8600 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 6350 6500 6350
Wire Wire Line
	6200 4850 7250 4850
Wire Wire Line
	6200 4550 6600 4550
Wire Wire Line
	6200 3800 8400 3800
Wire Wire Line
	6200 3300 6450 3300
Wire Wire Line
	6200 2550 8400 2550
Wire Wire Line
	6200 2450 7750 2450
Wire Wire Line
	6200 2350 7100 2350
Wire Wire Line
	6200 2050 6450 2050
Text Label 6200 4550 0    60   ~ 0
CHAN1_W
Text Label 6200 6350 0    60   ~ 0
CHAN0_W
Text Label 6200 3300 0    60   ~ 0
CHAN2_W
Text Label 6200 2050 0    60   ~ 0
CHAN3_W
Text Label 6200 2350 0    60   ~ 0
CHAN3_B
Text Label 6200 2450 0    60   ~ 0
CHAN3_R
Text Label 6200 2550 0    60   ~ 0
CHAN3_G
Text Label 6200 3600 0    60   ~ 0
CHAN2_B
Text Label 6200 3700 0    60   ~ 0
CHAN2_R
Text Label 6200 3800 0    60   ~ 0
CHAN2_G
Text Label 6200 4850 0    60   ~ 0
CHAN1_B
Text Label 6200 4950 0    60   ~ 0
CHAN1_R
Text Label 6200 5050 0    60   ~ 0
CHAN1_G
Text Label 6200 6650 0    60   ~ 0
CHAN0_B
Text Label 6200 6750 0    60   ~ 0
CHAN0_R
Text Label 6200 6850 0    60   ~ 0
CHAN0_G
$Comp
L STM32F030R8 U?
U 2 1 58C1BBAE
P 1200 1650
AR Path="/582461B9/58C1BBAE" Ref="U?"  Part="2" 
AR Path="/58C1BBAE" Ref="U2"  Part="2" 
F 0 "U2" H 1300 1700 50  0000 C CNN
F 1 "STM32F030R8" H 1500 1800 50  0001 C CNN
F 2 "LQFP-64" H 1400 1900 50  0001 C CIN
F 3 "" H 4500 -850 50  0000 C CNN
	2    1200 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 2150 4150 2150
Wire Wire Line
	3750 2350 4150 2350
Wire Wire Line
	3750 2550 4150 2550
Wire Wire Line
	3750 5300 4050 5300
Text Label 4150 2550 0    60   ~ 0
CHAN0_W
Text Label 4150 2350 0    60   ~ 0
CHAN0_B
Text Label 4150 2150 0    60   ~ 0
CHAN0_R
Text Label 4050 5300 0    60   ~ 0
CHAN0_G
Wire Wire Line
	11350 7050 11700 7050
Wire Wire Line
	11350 7150 11700 7150
Text Label 11700 7050 0    60   ~ 0
SWDAT
Text Label 11700 7150 0    60   ~ 0
SWCLK
Text Label 14600 7050 0    60   ~ 0
UART_TX
Text Label 14600 7150 0    60   ~ 0
UART_RX
Wire Wire Line
	2800 10050 3050 10050
Wire Wire Line
	4600 7550 4900 7550
Wire Wire Line
	4600 7350 4900 7350
Wire Wire Line
	3750 5000 4050 5000
Wire Wire Line
	3750 4800 4050 4800
Wire Wire Line
	3750 3350 4100 3350
Wire Wire Line
	3750 3150 4100 3150
Wire Wire Line
	3750 3050 4100 3050
Text Label 3050 10050 0    60   ~ 0
CHAN1_W
Text Label 4900 7550 0    60   ~ 0
CHAN1_B
Text Label 4900 7350 0    60   ~ 0
CHAN1_R
Text Label 4050 5000 0    60   ~ 0
CHAN1_G
Text Label 4050 4800 0    60   ~ 0
CHAN2_W
Text Label 4100 3350 0    60   ~ 0
CHAN2_B
Text Label 4100 3150 0    60   ~ 0
CHAN2_R
Text Label 4100 3050 0    60   ~ 0
CHAN2_G
Wire Wire Line
	3750 2850 4100 2850
Wire Wire Line
	3750 1950 4150 1950
Wire Wire Line
	3750 4600 4050 4600
Wire Wire Line
	4600 7150 4900 7150
Text Label 4100 2850 0    60   ~ 0
CHAN3_W
Text Label 4150 1950 0    60   ~ 0
CHAN3_B
Text Label 4050 4600 0    60   ~ 0
CHAN3_R
Text Label 4900 7150 0    60   ~ 0
CHAN3_G
Text Label 6200 8150 0    60   ~ 0
MAINS_ENABLE
Wire Wire Line
	3750 4300 4050 4300
Text Label 4050 4300 0    60   ~ 0
MAINS_ENABLE
Wire Wire Line
	2800 9550 3050 9550
Text Label 3050 9550 0    60   ~ 0
1W-DATA
Text Label 4950 6650 0    60   ~ 0
UART_TX
Text Label 4950 6750 0    60   ~ 0
UART_RX
Text Label 4900 7750 0    60   ~ 0
SWDAT
Text Label 4900 7850 0    60   ~ 0
SWCLK
$EndSCHEMATC
