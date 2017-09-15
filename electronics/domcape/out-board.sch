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
LIBS:out-board-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "4 FET Output Board"
Date "2015-08-12"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L PC817 IC1
U 1 1 55A81D51
P 4650 3700
F 0 "IC1" H 4440 3890 40  0000 C CNN
F 1 "PC817" H 4830 3510 40  0000 C CNN
F 2 "Housings_DIP:DIP-4_W7.62mm_LongPads" H 4440 3520 30  0000 C CIN
F 3 "~" H 4650 3700 60  0000 C CNN
	1    4650 3700
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 55BF39C7
P 5300 3400
F 0 "R2" V 5380 3400 50  0000 C CNN
F 1 "100k" V 5300 3400 50  0000 C CNN
F 2 "custom:RC03" V 5230 3400 30  0000 C CNN
F 3 "" H 5300 3400 30  0000 C CNN
	1    5300 3400
	0    -1   1    0   
$EndComp
Text Label 6750 3600 0    60   ~ 0
OUT_1
$Comp
L R R1
U 1 1 55BF62EA
P 5800 3800
F 0 "R1" V 5700 3800 50  0000 C CNN
F 1 "15k" V 5800 3800 50  0000 C CNN
F 2 "custom:RC03" V 5730 3800 30  0000 C CNN
F 3 "" H 5800 3800 30  0000 C CNN
	1    5800 3800
	0    -1   -1   0   
$EndComp
Text Label 6750 4100 0    60   ~ 0
-12V_1
Connection ~ 6750 3400
Wire Wire Line
	5450 3400 7100 3400
Wire Wire Line
	5950 3800 7250 3800
Text Label 6750 3300 0    60   ~ 0
+12V
Wire Wire Line
	4950 3200 4950 3600
$Comp
L IRF540N Q1
U 1 1 55BF81D0
P 5850 3600
F 0 "Q1" H 6100 3675 50  0000 L CNN
F 1 "IRF540N" H 6100 3600 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-220_Neutral123_Vertical" H 6100 3525 50  0000 L CIN
F 3 "" H 5850 3600 50  0000 L CNN
	1    5850 3600
	1    0    0    -1  
$EndComp
Connection ~ 5650 3800
Connection ~ 5950 3800
$Comp
L CONN_01X04 P2
U 1 1 592C7F6D
P 7700 3350
F 0 "P2" H 7700 3550 50  0000 C CNN
F 1 "CONN_01X04" V 7800 3350 50  0000 C CNN
F 2 "Terminal_Blocks:TerminalBlock_Pheonix_MKDS1.5-4pol" H 7700 3350 50  0000 C CNN
F 3 "" H 7700 3350 50  0000 C CNN
	1    7700 3350
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P1
U 1 1 592C7FA0
P 3850 3650
F 0 "P1" H 3850 3850 50  0000 C CNN
F 1 "CONN_01X03" V 3950 3650 50  0000 C CNN
F 2 "Terminal_Blocks:TerminalBlock_Pheonix_MKDS1.5-2pol" H 3850 3650 50  0000 C CNN
F 3 "" H 3850 3650 50  0000 C CNN
	1    3850 3650
	-1   0    0    1   
$EndComp
Wire Wire Line
	6750 3800 6750 4100
Wire Wire Line
	6750 3400 6750 3600
Wire Wire Line
	4950 3200 7500 3200
Connection ~ 6750 3800
Wire Wire Line
	6750 3200 6750 3300
Connection ~ 6750 3200
Wire Wire Line
	4050 3700 4350 3700
Wire Wire Line
	4350 3700 4350 3800
Wire Wire Line
	7100 3400 7100 3300
Wire Wire Line
	7100 3300 7500 3300
Wire Wire Line
	7250 3800 7250 3500
Wire Wire Line
	7250 3500 7500 3500
Wire Wire Line
	7500 3200 7500 3000
Wire Wire Line
	7500 3000 7900 3000
Wire Wire Line
	7900 3000 7900 3400
Wire Wire Line
	7900 3400 7500 3400
$Comp
L R R0
U 1 1 59BB0113
P 5300 3800
F 0 "R0" V 5380 3800 50  0000 C CNN
F 1 "33K" V 5300 3800 50  0000 C CNN
F 2 "custom:RC03" V 5230 3800 30  0000 C CNN
F 3 "" H 5300 3800 30  0000 C CNN
	1    5300 3800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4950 3800 5150 3800
Wire Wire Line
	5450 3800 5650 3800
Wire Wire Line
	5650 3800 5650 3650
Connection ~ 5950 3400
Wire Wire Line
	5150 3400 4950 3400
Connection ~ 4950 3400
$Comp
L R R4
U 1 1 59BB097A
P 4200 3600
F 0 "R4" V 4100 3600 50  0000 C CNN
F 1 "1.2k" V 4200 3600 50  0000 C CNN
F 2 "custom:RC03" V 4130 3600 30  0000 C CNN
F 3 "" H 4200 3600 30  0000 C CNN
	1    4200 3600
	0    -1   1    0   
$EndComp
$EndSCHEMATC
