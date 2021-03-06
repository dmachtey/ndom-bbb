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
LIBS:w_relay
LIBS:relay-board-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "4 Realays Plugable Output Board"
Date "17 jul 2015"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L RELAY_HJR-3FF_Z RLY1
U 1 1 55BFCB47
P 6500 3850
F 0 "RLY1" H 6500 4100 60  0000 C CNN
F 1 "RELAY_HJR-3FF_Z" H 6500 3615 60  0000 C CNN
F 2 "Relays_ThroughHole:Relay_SANYOU_SRD_Series_Form_C" H 6500 3850 60  0000 C CNN
F 3 "" H 6500 3850 60  0000 C CNN
	1    6500 3850
	0    -1   -1   0   
$EndComp
$Comp
L D D1
U 1 1 55BFE829
P 5950 3800
F 0 "D1" H 5950 3900 50  0000 C CNN
F 1 "1N4001" H 5950 3700 50  0000 C CNN
F 2 "Diodes_ThroughHole:Diode_DO-35_SOD27_Horizontal_RM10" H 5950 3800 60  0000 C CNN
F 3 "" H 5950 3800 60  0000 C CNN
	1    5950 3800
	0    1    1    0   
$EndComp
$Comp
L BC548 Q1
U 1 1 55BFF16C
P 5250 4150
F 0 "Q1" H 5450 4225 50  0000 L CNN
F 1 "BC548" H 5450 4150 50  0000 L CNN
F 2 "Housings_TO-92:TO-92_Rugged" H 5450 4075 50  0000 L CIN
F 3 "" H 5250 4150 50  0000 L CNN
	1    5250 4150
	1    0    0    -1  
$EndComp
Text Label 4600 4650 0    60   ~ 0
GND12V
Text Label 4550 3400 2    60   ~ 0
+12VDC
Wire Wire Line
	5050 3800 5050 4150
Wire Wire Line
	5350 3950 5950 3950
Wire Wire Line
	5950 3950 5950 4050
Wire Wire Line
	5950 4050 6350 4050
Connection ~ 5950 3650
$Comp
L CONN_01X03 P2
U 1 1 592C578A
P 7300 3800
F 0 "P2" H 7300 4000 50  0000 C CNN
F 1 "CONN_01X03" V 7400 3800 50  0000 C CNN
F 2 "Terminal_Blocks:TerminalBlock_Pheonix_MKDS1.5-3pol" H 7300 3800 50  0000 C CNN
F 3 "" H 7300 3800 50  0000 C CNN
	1    7300 3800
	1    0    0    1   
$EndComp
Wire Wire Line
	6650 3650 6650 3600
Wire Wire Line
	7000 3700 7000 3500
Wire Wire Line
	7000 3500 6550 3500
Wire Wire Line
	6550 3500 6550 3650
Wire Wire Line
	6900 4050 6600 4050
Wire Wire Line
	6900 3800 6900 4050
$Comp
L CONN_01X03 P1
U 1 1 592C59AE
P 4350 3800
F 0 "P1" H 4350 4000 50  0000 C CNN
F 1 "CONN_01X03" V 4450 3800 50  0000 C CNN
F 2 "Terminal_Blocks:TerminalBlock_Pheonix_MKDS1.5-3pol" H 4350 3800 50  0000 C CNN
F 3 "" H 4350 3800 50  0000 C CNN
	1    4350 3800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4550 3400 4550 3700
Wire Wire Line
	4550 3650 6350 3650
Connection ~ 4550 3650
Wire Wire Line
	4550 3900 4550 4650
Wire Wire Line
	4550 4400 5350 4400
Wire Wire Line
	4550 4650 4600 4650
Connection ~ 4550 4400
Wire Wire Line
	5350 4400 5350 4350
$Comp
L R R1
U 1 1 592C5C87
P 4800 3800
F 0 "R1" V 4880 3800 50  0000 C CNN
F 1 "0" V 4800 3800 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 4730 3800 50  0000 C CNN
F 3 "" H 4800 3800 50  0000 C CNN
	1    4800 3800
	0    1    1    0   
$EndComp
Wire Wire Line
	4550 3800 4650 3800
Wire Wire Line
	4950 3800 5050 3800
Wire Wire Line
	6900 3800 7100 3800
Wire Wire Line
	7000 3700 7100 3700
Wire Wire Line
	6800 3900 7100 3900
Wire Wire Line
	6800 3600 6800 3900
Wire Wire Line
	6650 3600 6800 3600
$EndSCHEMATC
