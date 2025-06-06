EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Récepteur télécommande"
Date "13/05/2025"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_Microchip_PIC18:PIC18F26K80_ISS U2
U 1 1 68232FCA
P 4700 4100
F 0 "U2" H 4700 5167 50  0000 C CNN
F 1 "PIC18F26K80_ISS" H 4700 5076 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W7.62mm_Socket_LongPads" H 4700 3850 50  0001 C CNN
F 3 "" H 4700 4050 50  0001 C CNN
	1    4700 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal Y1
U 1 1 68233AAA
P 1950 4100
F 0 "Y1" H 1950 4368 50  0000 C CNN
F 1 "Crystal 16MHz" H 1950 4277 50  0000 C CNN
F 2 "Crystal:Crystal_HC18-U_Vertical" H 1950 4100 50  0001 C CNN
F 3 "~" H 1950 4100 50  0001 C CNN
	1    1950 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 4100 1600 4100
Wire Wire Line
	1600 4100 1600 4300
Wire Wire Line
	1600 4300 2400 4300
$Comp
L power:GND #PWR03
U 1 1 68234EB8
P 4500 1650
F 0 "#PWR03" H 4500 1400 50  0001 C CNN
F 1 "GND" H 4505 1477 50  0000 C CNN
F 2 "" H 4500 1650 50  0001 C CNN
F 3 "" H 4500 1650 50  0001 C CNN
	1    4500 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 1500 4500 1650
$Comp
L Device:C C4
U 1 1 682354E3
P 5100 1450
F 0 "C4" H 5215 1496 50  0000 L CNN
F 1 "100nF" H 5215 1405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 5138 1300 50  0001 C CNN
F 3 "~" H 5100 1450 50  0001 C CNN
	1    5100 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 68235C77
P 3700 1450
F 0 "C1" H 3815 1496 50  0000 L CNN
F 1 "100nF" H 3815 1405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 3738 1300 50  0001 C CNN
F 3 "~" H 3700 1450 50  0001 C CNN
	1    3700 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 1200 5100 1200
Wire Wire Line
	5100 1300 5100 1200
Connection ~ 5100 1200
Wire Wire Line
	5100 1200 5600 1200
Text Label 5600 1200 0    50   ~ 0
VCC
$Comp
L power:GND #PWR06
U 1 1 682376A4
P 5100 1650
F 0 "#PWR06" H 5100 1400 50  0001 C CNN
F 1 "GND" H 5105 1477 50  0000 C CNN
F 2 "" H 5100 1650 50  0001 C CNN
F 3 "" H 5100 1650 50  0001 C CNN
	1    5100 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 68237950
P 2500 1650
F 0 "#PWR01" H 2500 1400 50  0001 C CNN
F 1 "GND" H 2505 1477 50  0000 C CNN
F 2 "" H 2500 1650 50  0001 C CNN
F 3 "" H 2500 1650 50  0001 C CNN
	1    2500 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 1600 5100 1650
Wire Wire Line
	2500 1600 2500 1650
Wire Wire Line
	3550 4700 3550 4800
Connection ~ 3550 4800
$Comp
L power:GND #PWR05
U 1 1 68238B1E
P 3550 5150
F 0 "#PWR05" H 3550 4900 50  0001 C CNN
F 1 "GND" H 3555 4977 50  0000 C CNN
F 2 "" H 3550 5150 50  0001 C CNN
F 3 "" H 3550 5150 50  0001 C CNN
	1    3550 5150
	1    0    0    -1  
$EndComp
Text Label 2850 3000 0    50   ~ 0
VCC
Wire Wire Line
	5500 3800 5950 3800
Text Label 5700 3800 0    50   ~ 0
PGM
Text Label 6350 3900 0    50   ~ 0
PGC
Text Label 6350 4000 0    50   ~ 0
PGD
$Comp
L Device:C C2
U 1 1 68239EE6
P 1600 4550
F 0 "C2" H 1715 4596 50  0000 L CNN
F 1 "15pF" H 1715 4505 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 1638 4400 50  0001 C CNN
F 3 "~" H 1600 4550 50  0001 C CNN
	1    1600 4550
	1    0    0    -1  
$EndComp
Connection ~ 1600 4300
$Comp
L Device:C C3
U 1 1 6823A9C6
P 2200 4550
F 0 "C3" H 2315 4596 50  0000 L CNN
F 1 "15pF" H 2315 4505 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 2238 4400 50  0001 C CNN
F 3 "~" H 2200 4550 50  0001 C CNN
	1    2200 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 4400 2200 4100
Connection ~ 2200 4100
Wire Wire Line
	2200 4100 2100 4100
$Comp
L power:GND #PWR04
U 1 1 6823B59D
P 2200 5150
F 0 "#PWR04" H 2200 4900 50  0001 C CNN
F 1 "GND" H 2205 4977 50  0000 C CNN
F 2 "" H 2200 5150 50  0001 C CNN
F 3 "" H 2200 5150 50  0001 C CNN
	1    2200 5150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 6823B7C7
P 1600 5150
F 0 "#PWR02" H 1600 4900 50  0001 C CNN
F 1 "GND" H 1605 4977 50  0000 C CNN
F 2 "" H 1600 5150 50  0001 C CNN
F 3 "" H 1600 5150 50  0001 C CNN
	1    1600 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 4300 1600 4400
Text Label 6350 3700 0    50   ~ 0
RX
Wire Wire Line
	3900 3900 3500 3900
Text Label 3500 3900 0    50   ~ 0
MCLR
$Comp
L Connector:Conn_01x08_Male J1
U 1 1 6823E3D9
P 9400 1250
F 0 "J1" H 9372 1224 50  0000 R CNN
F 1 "Conn_01x08_Male" H 9372 1133 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 9400 1250 50  0001 C CNN
F 3 "~" H 9400 1250 50  0001 C CNN
	1    9400 1250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9200 950  8800 950 
Wire Wire Line
	9200 1050 8800 1050
Wire Wire Line
	9200 1150 8800 1150
Wire Wire Line
	9200 1250 8800 1250
Wire Wire Line
	9200 1350 8800 1350
Wire Wire Line
	9200 1450 8800 1450
Wire Wire Line
	9200 1550 8800 1550
Wire Wire Line
	9200 1650 8800 1650
Text Label 8800 950  0    50   ~ 0
MCLR
Text Label 8800 1050 0    50   ~ 0
TVDD
Text Label 8800 1150 0    50   ~ 0
GND
Text Label 8800 1250 0    50   ~ 0
PGD
Text Label 8800 1350 0    50   ~ 0
PGC
NoConn ~ 8800 1450
NoConn ~ 8800 1550
NoConn ~ 8800 1650
Text Notes 8700 1950 0    59   ~ 0
Connecteur ICSP\n     pickit 5
$Comp
L Device:R R1
U 1 1 6824B57C
P 7150 1050
F 0 "R1" V 7050 1100 50  0000 L CNN
F 1 "330" V 7050 900 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 7080 1050 50  0001 C CNN
F 3 "~" H 7150 1050 50  0001 C CNN
	1    7150 1050
	0    1    1    0   
$EndComp
Wire Wire Line
	2200 4100 3900 4100
Wire Wire Line
	2400 4300 2400 4200
Wire Wire Line
	2400 4200 3900 4200
$Comp
L Device:D D2
U 1 1 682550AA
P 3150 3350
F 0 "D2" V 3196 3270 50  0000 R CNN
F 1 "1N4004" V 3105 3270 50  0000 R CNN
F 2 "Diode_THT:D_DO-41_SOD81_P2.54mm_Vertical_KathodeUp" H 3150 3350 50  0001 C CNN
F 3 "~" H 3150 3350 50  0001 C CNN
	1    3150 3350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3150 3200 3150 3000
Text Label 3150 3000 0    50   ~ 0
TVDD
$Comp
L Device:D D1
U 1 1 68256C96
P 2850 3350
F 0 "D1" V 2896 3270 50  0000 R CNN
F 1 "1N4004" V 2900 3750 50  0000 R CNN
F 2 "Diode_THT:D_DO-41_SOD81_P12.70mm_Horizontal" H 2850 3350 50  0001 C CNN
F 3 "~" H 2850 3350 50  0001 C CNN
	1    2850 3350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2850 3200 2850 3000
$Comp
L Memory_EEPROM:24LC1026-I_P U3
U 1 1 68235440
P 7400 2900
F 0 "U3" H 8200 3237 60  0000 C CNN
F 1 "24LC1026-I_P" H 8200 3131 60  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket_LongPads" H 8200 3090 60  0001 C CNN
F 3 "" H 7400 2900 60  0000 C CNN
	1    7400 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 3200 7150 3200
Wire Wire Line
	7150 3200 7150 3300
$Comp
L power:GND #PWR010
U 1 1 68236ECC
P 7150 3300
F 0 "#PWR010" H 7150 3050 50  0001 C CNN
F 1 "GND" H 7155 3127 50  0000 C CNN
F 2 "" H 7150 3300 50  0001 C CNN
F 3 "" H 7150 3300 50  0001 C CNN
	1    7150 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 3100 7150 3100
Wire Wire Line
	7400 3000 7150 3000
Wire Wire Line
	7150 3200 7150 3100
Connection ~ 7150 3200
Connection ~ 7150 3100
Wire Wire Line
	7150 3100 7150 3000
Text Label 10100 3100 0    50   ~ 0
SCL
Text Label 10100 3200 0    50   ~ 0
SDA
$Comp
L Device:R R3
U 1 1 6823DD3E
P 9650 3200
F 0 "R3" V 9600 2950 50  0000 L CNN
F 1 "330" V 9600 3350 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 9580 3200 50  0001 C CNN
F 3 "~" H 9650 3200 50  0001 C CNN
	1    9650 3200
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 6823E98E
P 9650 3100
F 0 "R2" V 9600 2850 50  0000 L CNN
F 1 "330" V 9600 3250 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 9580 3100 50  0001 C CNN
F 3 "~" H 9650 3100 50  0001 C CNN
	1    9650 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	9800 3100 10100 3100
Wire Wire Line
	9800 3200 10100 3200
Text Label 6350 4500 0    50   ~ 0
SCL
Text Label 6350 4600 0    50   ~ 0
SDA
$Comp
L power:GND #PWR012
U 1 1 68246CCF
P 9800 2750
F 0 "#PWR012" H 9800 2500 50  0001 C CNN
F 1 "GND" H 9805 2577 50  0000 C CNN
F 2 "" H 9800 2750 50  0001 C CNN
F 3 "" H 9800 2750 50  0001 C CNN
	1    9800 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:D D3
U 1 1 6824873F
P 2150 1200
F 0 "D3" H 2200 1050 50  0000 R CNN
F 1 "1N4004" H 2300 1350 50  0000 R CNN
F 2 "Diode_THT:D_DO-41_SOD81_P7.62mm_Horizontal" H 2150 1200 50  0001 C CNN
F 3 "~" H 2150 1200 50  0001 C CNN
	1    2150 1200
	-1   0    0    1   
$EndComp
Wire Wire Line
	2000 1200 1700 1200
$Comp
L Connector:Conn_01x02_Male J2
U 1 1 6824ADF3
P 1500 1200
F 0 "J2" H 1608 1381 50  0000 C CNN
F 1 "Conn_01x02_Male" H 1608 1290 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1500 1200 50  0001 C CNN
F 3 "~" H 1500 1200 50  0001 C CNN
	1    1500 1200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 6824B6B1
P 1850 1650
F 0 "#PWR07" H 1850 1400 50  0001 C CNN
F 1 "GND" H 1855 1477 50  0000 C CNN
F 2 "" H 1850 1650 50  0001 C CNN
F 3 "" H 1850 1650 50  0001 C CNN
	1    1850 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 1300 1850 1300
Wire Wire Line
	1850 1300 1850 1650
$Comp
L Device:LED D4
U 1 1 68251A9B
P 7550 1050
F 0 "D4" H 7543 1267 50  0000 C CNN
F 1 "LED" H 7543 1176 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 7550 1050 50  0001 C CNN
F 3 "~" H 7550 1050 50  0001 C CNN
	1    7550 1050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 6825222A
P 7800 1900
F 0 "#PWR08" H 7800 1650 50  0001 C CNN
F 1 "GND" H 7805 1727 50  0000 C CNN
F 2 "" H 7800 1900 50  0001 C CNN
F 3 "" H 7800 1900 50  0001 C CNN
	1    7800 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 1050 7800 1050
Wire Wire Line
	7300 1050 7400 1050
Wire Wire Line
	7000 1050 6600 1050
Text Label 6600 1050 0    50   ~ 0
LED
Text Label 6350 4200 0    50   ~ 0
LED
Wire Wire Line
	8000 4650 8000 4850
Wire Wire Line
	9150 4650 9150 4750
Text Notes 8200 4150 0    59   ~ 0
Récepteur RXB6
Text Label 7850 4850 2    50   ~ 0
ANT
$Comp
L power:GND #PWR09
U 1 1 6826ACCA
P 8100 5100
F 0 "#PWR09" H 8100 4850 50  0001 C CNN
F 1 "GND" H 8105 4927 50  0000 C CNN
F 2 "" H 8100 5100 50  0001 C CNN
F 3 "" H 8100 5100 50  0001 C CNN
	1    8100 5100
	1    0    0    -1  
$EndComp
Text Label 8300 4950 1    50   ~ 0
VDD
Text Label 9050 4950 1    50   ~ 0
VDD
Text Label 9150 4950 1    50   ~ 0
RX
$Comp
L power:GND #PWR011
U 1 1 6826DD91
P 9350 5100
F 0 "#PWR011" H 9350 4850 50  0001 C CNN
F 1 "GND" H 9355 4927 50  0000 C CNN
F 2 "" H 9350 5100 50  0001 C CNN
F 3 "" H 9350 5100 50  0001 C CNN
	1    9350 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 4750 9250 4750
Wire Wire Line
	9250 4750 9250 4650
Connection ~ 9150 4750
Wire Wire Line
	5500 4700 5650 4700
NoConn ~ 5650 4700
Text Label 6350 4800 0    50   ~ 0
TX1
Text Label 6350 4900 0    50   ~ 0
RX1
$Comp
L power:GND #PWR013
U 1 1 6829AD2D
P 3200 5150
F 0 "#PWR013" H 3200 4900 50  0001 C CNN
F 1 "GND" H 3205 4977 50  0000 C CNN
F 2 "" H 3200 5150 50  0001 C CNN
F 3 "" H 3200 5150 50  0001 C CNN
	1    3200 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 4700 1600 5150
Wire Wire Line
	2200 4700 2200 5150
Wire Wire Line
	3550 4800 3550 5150
Wire Notes Line
	1150 7300 3800 7300
Wire Notes Line
	3800 7300 3800 5950
Wire Notes Line
	3800 5950 1150 5950
Wire Notes Line
	1150 5950 1150 7300
$Comp
L Connector:Conn_01x06_Male J5
U 1 1 682B375A
P 2750 6500
F 0 "J5" H 2850 6100 50  0000 C CNN
F 1 "Conn_01x06_Male" H 3050 6950 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x06_P2.54mm_Vertical" H 2750 6500 50  0001 C CNN
F 3 "~" H 2750 6500 50  0001 C CNN
	1    2750 6500
	1    0    0    -1  
$EndComp
Text Label 3500 6700 0    50   ~ 0
GND
Text Label 3500 6400 0    50   ~ 0
CTS
Text Label 3000 6800 0    50   ~ 0
VDS
Text Label 3500 6600 0    50   ~ 0
TX1
Text Label 3500 6500 0    50   ~ 0
RX1
Text Label 3500 6300 0    50   ~ 0
RTS
Wire Wire Line
	5500 4300 5800 4300
Wire Wire Line
	5500 4400 5800 4400
Wire Wire Line
	3900 3300 3750 3300
Wire Wire Line
	3900 3400 3750 3400
Wire Wire Line
	3900 3500 3750 3500
Wire Wire Line
	3900 3600 3750 3600
NoConn ~ 3750 3300
NoConn ~ 3750 3400
NoConn ~ 3750 3500
Text Label 6350 4300 0    50   ~ 0
RTS
Text Label 6350 4400 0    50   ~ 0
CTS
Text Notes 1350 6600 0    59   ~ 0
convertisseur\nUART / USB
Wire Wire Line
	7500 4850 8000 4850
Wire Wire Line
	9350 4650 9350 5100
$Comp
L power:GND #PWR0101
U 1 1 68316222
P 7650 5100
F 0 "#PWR0101" H 7650 4850 50  0001 C CNN
F 1 "GND" H 7655 4927 50  0000 C CNN
F 2 "" H 7650 5100 50  0001 C CNN
F 3 "" H 7650 5100 50  0001 C CNN
	1    7650 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 4950 7650 4950
Wire Wire Line
	7650 4950 7650 5100
Wire Notes Line
	6950 3950 9800 3950
Wire Notes Line
	9800 3950 9800 5400
Wire Notes Line
	9800 5400 6950 5400
Wire Notes Line
	6950 5400 6950 3950
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 68324135
P 5700 1500
F 0 "#FLG0102" H 5700 1575 50  0001 C CNN
F 1 "PWR_FLAG" H 5700 1673 50  0000 C CNN
F 2 "" H 5700 1500 50  0001 C CNN
F 3 "~" H 5700 1500 50  0001 C CNN
	1    5700 1500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 683246F7
P 5700 1650
F 0 "#PWR0102" H 5700 1400 50  0001 C CNN
F 1 "GND" H 5705 1477 50  0000 C CNN
F 2 "" H 5700 1650 50  0001 C CNN
F 3 "" H 5700 1650 50  0001 C CNN
	1    5700 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 1500 5700 1650
$Comp
L Device:C C6
U 1 1 6832F2EB
P 2850 4850
F 0 "C6" H 2965 4896 50  0000 L CNN
F 1 "100nF" H 2900 4750 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 2888 4700 50  0001 C CNN
F 3 "~" H 2850 4850 50  0001 C CNN
	1    2850 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 4400 2850 4700
$Comp
L power:GND #PWR014
U 1 1 68332EB7
P 2850 5150
F 0 "#PWR014" H 2850 4900 50  0001 C CNN
F 1 "GND" H 2855 4977 50  0000 C CNN
F 2 "" H 2850 5150 50  0001 C CNN
F 3 "" H 2850 5150 50  0001 C CNN
	1    2850 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 5000 2850 5150
Wire Wire Line
	3200 4700 3200 4500
Wire Wire Line
	3200 5000 3200 5150
$Comp
L Device:C C5
U 1 1 682920CA
P 3200 4850
F 0 "C5" H 3315 4896 50  0000 L CNN
F 1 "100nF" H 3250 4750 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 3238 4700 50  0001 C CNN
F 3 "~" H 3200 4850 50  0001 C CNN
	1    3200 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 4500 3900 4500
Wire Wire Line
	3900 4700 3550 4700
Wire Wire Line
	3900 4800 3550 4800
Wire Notes Line
	8200 750  8200 2050
Wire Notes Line
	8200 2050 10250 2050
Wire Notes Line
	10250 2050 10250 750 
Wire Notes Line
	10250 750  8200 750 
NoConn ~ 5950 3800
Wire Wire Line
	9150 4750 9150 4950
Wire Wire Line
	9050 4650 9050 4950
Wire Wire Line
	8300 4650 8300 4950
Wire Wire Line
	8100 4650 8100 4750
Wire Wire Line
	8200 4750 8100 4750
Wire Wire Line
	8200 4750 8200 4650
Connection ~ 8100 4750
Wire Wire Line
	8100 4750 8100 5100
Text Notes 7950 3600 0    59   ~ 0
Eprom 128ko
Wire Notes Line
	6950 3850 6950 2300
Wire Notes Line
	1150 2750 1150 5600
Wire Notes Line
	6750 5600 6750 2750
Text Notes 1350 3300 0    59   ~ 0
Processeur\n64Ko mémoire programme\n3648 octets RAM\n1ko eeprom\n
Wire Notes Line
	5950 650  5950 2200
Wire Notes Line
	1050 2200 1050 650 
Text Notes 2650 2050 0    59   ~ 0
Alimentation
Wire Notes Line
	6450 650  6450 2200
Wire Notes Line
	6450 2200 8050 2200
Wire Notes Line
	8050 2200 8050 650 
Wire Notes Line
	8050 650  6450 650 
Text Notes 6800 1900 0    59   ~ 0
Led et bouton
Text Label 6350 3500 0    50   ~ 0
Bp1
Wire Wire Line
	5650 3600 5500 3600
NoConn ~ 5650 3600
Wire Wire Line
	6600 1600 6950 1600
Wire Wire Line
	7400 1600 7450 1600
Wire Wire Line
	7800 1600 7800 1900
Text Label 6600 1600 0    50   ~ 0
Bp1
Text Notes 2550 6500 0    50   ~ 0
TXD
Text Notes 2550 6600 0    50   ~ 0
RXD
Text Notes 2550 6300 0    50   ~ 0
CTS
Text Notes 2550 6400 0    50   ~ 0
RTS
Text Notes 2200 6800 0    59   ~ 0
CH343G\nWV21443
Wire Notes Line
	2100 6150 2750 6150
Wire Notes Line
	2750 6150 2750 6900
Wire Notes Line
	2750 6900 2100 6900
Wire Notes Line
	2100 6900 2100 6150
NoConn ~ 3750 3600
Wire Wire Line
	3500 3700 3900 3700
Wire Wire Line
	2850 4400 3150 4400
Wire Wire Line
	3150 3500 3150 4400
Connection ~ 3150 4400
Wire Wire Line
	3150 4400 3900 4400
Wire Wire Line
	2850 3500 2850 4400
Connection ~ 2850 4400
Text Label 3500 3700 0    50   ~ 0
Rel1
$Comp
L power:GND #PWR015
U 1 1 683CB4A2
P 5350 7350
F 0 "#PWR015" H 5350 7100 50  0001 C CNN
F 1 "GND" H 5355 7177 50  0000 C CNN
F 2 "" H 5350 7350 50  0001 C CNN
F 3 "" H 5350 7350 50  0001 C CNN
	1    5350 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 6650 5350 6700
Wire Wire Line
	5850 6050 5850 5950
$Comp
L Transistor_FET:BS170 Q1
U 1 1 683E5F20
P 5250 7000
F 0 "Q1" H 5454 7046 50  0000 L CNN
F 1 "BS170" H 5454 6955 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline_Wide" H 5450 6925 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BS170-D.PDF" H 5250 7000 50  0001 L CNN
	1    5250 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 7200 5350 7350
Wire Wire Line
	5050 7000 4350 7000
Text Label 4350 7000 0    50   ~ 0
Rel1
Wire Wire Line
	5750 6650 5750 7150
Wire Wire Line
	5350 6050 5350 5950
Wire Wire Line
	5350 5950 4900 5950
Text Label 3450 1200 0    50   ~ 0
12VR
$Comp
L Device:D D5
U 1 1 6840143F
P 4500 800
F 0 "D5" H 4350 750 50  0000 R CNN
F 1 "1N4004" H 4900 750 50  0000 R CNN
F 2 "Diode_THT:D_DO-41_SOD81_P3.81mm_Vertical_AnodeUp" H 4500 800 50  0001 C CNN
F 3 "~" H 4500 800 50  0001 C CNN
	1    4500 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 1200 5100 800 
Wire Wire Line
	5100 800  4650 800 
Text Label 4500 5950 0    50   ~ 0
12VR
$Comp
L Device:D D6
U 1 1 6841D5A7
P 4900 6350
F 0 "D6" V 4946 6270 50  0000 R CNN
F 1 "1N4004" V 4800 6300 50  0000 R CNN
F 2 "Diode_THT:D_DO-41_SOD81_P2.54mm_Vertical_KathodeUp" H 4900 6350 50  0001 C CNN
F 3 "~" H 4900 6350 50  0001 C CNN
	1    4900 6350
	0    1    1    0   
$EndComp
Wire Wire Line
	5350 6700 4900 6700
Wire Wire Line
	4900 6700 4900 6500
Connection ~ 5350 6700
Wire Wire Line
	5350 6700 5350 6800
Wire Wire Line
	4900 6200 4900 5950
Connection ~ 4900 5950
$Comp
L Device:C C7
U 1 1 6842FD36
P 4300 6350
F 0 "C7" H 4415 6396 50  0000 L CNN
F 1 "100nF" H 4415 6305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4338 6200 50  0001 C CNN
F 3 "~" H 4300 6350 50  0001 C CNN
	1    4300 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 6700 4300 6700
Wire Wire Line
	4300 6700 4300 6500
Connection ~ 4900 6700
Wire Wire Line
	4300 6200 4300 5950
Wire Wire Line
	4300 5950 4900 5950
Wire Notes Line
	6750 5800 6750 7650
Wire Notes Line
	4000 7650 4000 5800
Text Notes 4200 7350 0    59   ~ 0
Relais de commande
$Comp
L Switch:SW_MEC_5E SW1
U 1 1 684573F1
P 7200 1600
F 0 "SW1" H 7200 1985 50  0000 C CNN
F 1 "SW_MEC_5E" H 7200 1894 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_Omron_B3FS-101xP" H 7200 1900 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=1371" H 7200 1900 50  0001 C CNN
	1    7200 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 1500 7450 1500
Wire Wire Line
	7450 1500 7450 1600
Connection ~ 7450 1600
Wire Wire Line
	7450 1600 7800 1600
Wire Wire Line
	7000 1500 6950 1500
Wire Wire Line
	6950 1500 6950 1600
Connection ~ 6950 1600
Wire Wire Line
	6950 1600 7000 1600
$Comp
L Device:R R6
U 1 1 682561E6
P 5800 4800
F 0 "R6" V 5750 4550 50  0000 L CNN
F 1 "220" V 5750 4950 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 5730 4800 50  0001 C CNN
F 3 "~" H 5800 4800 50  0001 C CNN
	1    5800 4800
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 6826A1FA
P 5800 4900
F 0 "R7" V 5750 4650 50  0000 L CNN
F 1 "220" V 5750 5050 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 5730 4900 50  0001 C CNN
F 3 "~" H 5800 4900 50  0001 C CNN
	1    5800 4900
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 6827131B
P 5950 4400
F 0 "R5" V 5900 4150 50  0000 L CNN
F 1 "220" V 5900 4550 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 5880 4400 50  0001 C CNN
F 3 "~" H 5950 4400 50  0001 C CNN
	1    5950 4400
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 68271A10
P 5950 4300
F 0 "R4" V 5900 4050 50  0000 L CNN
F 1 "220" V 5900 4450 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 5880 4300 50  0001 C CNN
F 3 "~" H 5950 4300 50  0001 C CNN
	1    5950 4300
	0    1    1    0   
$EndComp
Wire Wire Line
	5500 4200 6350 4200
Wire Wire Line
	6100 4300 6350 4300
Wire Wire Line
	6100 4400 6350 4400
Wire Wire Line
	5500 4500 6150 4500
Wire Wire Line
	5500 4600 6250 4600
Wire Wire Line
	7800 1050 7800 800 
Text Label 7800 800  0    50   ~ 0
VDD
Wire Wire Line
	5500 3500 6350 3500
Wire Wire Line
	5500 3900 6350 3900
Wire Wire Line
	5500 4000 6350 4000
$Comp
L Connector:Conn_01x01_Male J8
U 1 1 6828C709
P 6100 2950
F 0 "J8" V 6162 2994 50  0000 L CNN
F 1 "Conn_01x01_Male" V 6150 2200 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 6100 2950 50  0001 C CNN
F 3 "~" H 6100 2950 50  0001 C CNN
	1    6100 2950
	0    1    1    0   
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J6
U 1 1 682AD235
P 7300 4950
F 0 "J6" H 7218 4625 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 7218 4716 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 7300 4950 50  0001 C CNN
F 3 "~" H 7300 4950 50  0001 C CNN
	1    7300 4950
	-1   0    0    1   
$EndComp
Text Notes 6550 4400 0    50   ~ 0
<-
Wire Notes Line
	1150 5600 6750 5600
Wire Notes Line
	1150 2750 6750 2750
Text Notes 6550 4900 0    50   ~ 0
<-
Text Notes 6550 4800 0    50   ~ 0
->
Text Notes 6550 4300 0    50   ~ 0
->
$Comp
L Regulator_Linear:L7805 U4
U 1 1 682F7173
P 2950 1200
F 0 "U4" H 3150 1350 50  0000 C CNN
F 1 "L7812" H 2950 1351 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 2975 1050 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 2950 1150 50  0001 C CNN
	1    2950 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 6830677B
P 2500 1450
F 0 "C8" H 2615 1496 50  0000 L CNN
F 1 "100nF" H 2615 1405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 2538 1300 50  0001 C CNN
F 3 "~" H 2500 1450 50  0001 C CNN
	1    2500 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 1200 2350 1200
Wire Wire Line
	2500 1200 2500 1300
Connection ~ 2500 1200
Wire Wire Line
	2500 1200 2650 1200
$Comp
L power:GND #PWR016
U 1 1 68323D78
P 2950 1650
F 0 "#PWR016" H 2950 1400 50  0001 C CNN
F 1 "GND" H 2955 1477 50  0000 C CNN
F 2 "" H 2950 1650 50  0001 C CNN
F 3 "" H 2950 1650 50  0001 C CNN
	1    2950 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 68324068
P 3700 1650
F 0 "#PWR017" H 3700 1400 50  0001 C CNN
F 1 "GND" H 3705 1477 50  0000 C CNN
F 2 "" H 3700 1650 50  0001 C CNN
F 3 "" H 3700 1650 50  0001 C CNN
	1    3700 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 1600 3700 1650
Wire Wire Line
	2950 1500 2950 1650
Wire Wire Line
	3250 1200 3400 1200
Connection ~ 3700 1200
Wire Wire Line
	3700 1200 3700 1300
$Comp
L Device:D D7
U 1 1 68349F25
P 3000 800
F 0 "D7" H 2850 750 50  0000 R CNN
F 1 "1N4004" H 3400 750 50  0000 R CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 3000 800 50  0001 C CNN
F 3 "~" H 3000 800 50  0001 C CNN
	1    3000 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 800  3400 800 
Wire Wire Line
	3400 800  3400 1200
Connection ~ 3400 1200
Wire Wire Line
	3400 1200 3700 1200
Wire Wire Line
	2850 800  2500 800 
Wire Wire Line
	2500 800  2500 1200
Wire Notes Line
	1050 650  5950 650 
Wire Notes Line
	1050 2200 5950 2200
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 683729D2
P 2350 900
F 0 "#FLG0103" H 2350 975 50  0001 C CNN
F 1 "PWR_FLAG" H 2350 1073 50  0000 C CNN
F 2 "" H 2350 900 50  0001 C CNN
F 3 "~" H 2350 900 50  0001 C CNN
	1    2350 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 900  2350 1200
Connection ~ 2350 1200
Wire Wire Line
	2350 1200 2500 1200
$Comp
L Relay:EC2-12NU K1
U 1 1 6837C34C
P 5750 6350
F 0 "K1" H 6300 6100 50  0000 L CNN
F 1 "ATX203" H 6300 6000 50  0000 L CNN
F 2 "Relay_THT:Relay_DPDT_Kemet_EC2" H 5750 6350 50  0001 C CNN
F 3 "https://content.kemet.com/datasheets/KEM_R7002_EC2_EE2.pdf" H 5750 6350 50  0001 C CNN
	1    5750 6350
	1    0    0    -1  
$EndComp
Wire Notes Line
	4000 5800 6750 5800
Wire Notes Line
	4000 7650 6750 7650
Wire Wire Line
	6650 5950 6650 7000
Wire Wire Line
	6650 7000 5850 7000
Wire Wire Line
	5850 7000 5850 7150
Wire Wire Line
	5850 5950 6650 5950
$Comp
L Connector:Screw_Terminal_01x02 J7
U 1 1 683B1D5C
P 5850 7350
F 0 "J7" V 5850 7500 50  0000 C CNN
F 1 "Screw_Terminal_01x02" V 5700 7800 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 5850 7350 50  0001 C CNN
F 3 "~" H 5850 7350 50  0001 C CNN
	1    5850 7350
	0    1    1    0   
$EndComp
NoConn ~ 6050 6050
NoConn ~ 6250 6050
NoConn ~ 6150 6650
NoConn ~ 5650 6050
$Comp
L Regulator_Linear:L78L05_TO92 U1
U 1 1 68270CED
P 4500 1200
F 0 "U1" H 4500 1442 50  0000 C CNN
F 1 "L78L05_TO92" H 4500 1351 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline_Wide" H 4500 1425 50  0001 C CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/15/55/e5/aa/23/5b/43/fd/CD00000446.pdf/files/CD00000446.pdf/jcr:content/translations/en.CD00000446.pdf" H 4500 1150 50  0001 C CNN
	1    4500 1200
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1
U 1 1 682808FF
P 10450 1300
F 0 "H1" H 10550 1346 50  0000 L CNN
F 1 "MountingHole" H 10550 1255 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 10450 1300 50  0001 C CNN
F 3 "~" H 10450 1300 50  0001 C CNN
	1    10450 1300
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 68280E0C
P 10450 1500
F 0 "H2" H 10550 1546 50  0000 L CNN
F 1 "MountingHole" H 10550 1455 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 10450 1500 50  0001 C CNN
F 3 "~" H 10450 1500 50  0001 C CNN
	1    10450 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 6800 3000 6800
Wire Wire Line
	2950 6700 3500 6700
Wire Wire Line
	2950 6600 3500 6600
Wire Wire Line
	2950 6500 3500 6500
Wire Wire Line
	2950 6400 3500 6400
Wire Wire Line
	2950 6300 3500 6300
NoConn ~ 5650 3400
Wire Wire Line
	5500 3400 5650 3400
Wire Wire Line
	5500 3700 6100 3700
Wire Wire Line
	6100 3150 6100 3700
Wire Wire Line
	6100 3700 6350 3700
Connection ~ 6100 3700
NoConn ~ 5650 3300
Wire Wire Line
	5500 3300 5650 3300
Text Notes 3100 6600 0    50   ~ 0
<-
Text Notes 3100 6500 0    50   ~ 0
->
Text Notes 3100 6400 0    50   ~ 0
->
Text Notes 3100 6300 0    50   ~ 0
<-
$Comp
L Device:R R8
U 1 1 682E6C04
P 6150 5200
F 0 "R8" H 6250 5100 50  0000 L CNN
F 1 "8,2k" H 6200 5300 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 6080 5200 50  0001 C CNN
F 3 "~" H 6150 5200 50  0001 C CNN
	1    6150 5200
	-1   0    0    1   
$EndComp
Wire Wire Line
	5500 4800 5650 4800
Wire Wire Line
	5650 4900 5500 4900
Wire Wire Line
	5950 4800 6350 4800
Wire Wire Line
	5950 4900 6350 4900
Wire Wire Line
	6150 5050 6150 4500
Connection ~ 6150 4500
Wire Wire Line
	6150 4500 6350 4500
$Comp
L Device:R R9
U 1 1 68311349
P 6250 5200
F 0 "R9" H 6100 5100 50  0000 L CNN
F 1 "8,2k" H 6000 5300 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 6180 5200 50  0001 C CNN
F 3 "~" H 6250 5200 50  0001 C CNN
	1    6250 5200
	-1   0    0    1   
$EndComp
Wire Wire Line
	6250 5050 6250 4600
Connection ~ 6250 4600
Wire Wire Line
	6250 4600 6350 4600
Wire Wire Line
	6250 5350 6250 5500
Wire Wire Line
	6150 5350 6150 5500
Wire Wire Line
	5500 5500 6150 5500
Connection ~ 6150 5500
Wire Wire Line
	6150 5500 6250 5500
Text Label 3400 4400 0    50   ~ 0
VDD
Text Label 5500 5500 0    50   ~ 0
VDD
NoConn ~ 3000 6800
Wire Wire Line
	9000 3100 9500 3100
Wire Wire Line
	9000 3200 9500 3200
Text Label 8800 2500 0    50   ~ 0
VDD
Wire Wire Line
	9000 2900 9100 2900
Wire Wire Line
	9000 3000 9500 3000
Wire Wire Line
	8800 2500 9100 2500
Wire Wire Line
	9100 2500 9100 2650
Wire Wire Line
	9800 2650 9800 2750
Text Notes 8900 3500 0    50   ~ 0
WP au 0V = écriture possible\nWP au 5V = écriture impossible
Wire Notes Line
	10400 2300 10400 3850
Wire Notes Line
	6950 2300 10400 2300
Wire Notes Line
	6950 3850 10400 3850
Connection ~ 9100 2650
Wire Wire Line
	9100 2650 9100 2900
Wire Wire Line
	3700 1200 4000 1200
Wire Wire Line
	4000 800  4000 1200
Wire Wire Line
	4000 800  4350 800 
Connection ~ 4000 1200
Wire Wire Line
	4000 1200 4200 1200
$Comp
L Jumper:SolderJumper_3_Open JP1
U 1 1 6839F446
P 9500 2650
F 0 "JP1" H 9500 2855 50  0000 C CNN
F 1 "SolderJumper_3_Open" H 9550 2750 50  0000 C CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm_NumberLabels" H 9500 2650 50  0001 C CNN
F 3 "~" H 9500 2650 50  0001 C CNN
	1    9500 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 2650 9100 2650
Wire Wire Line
	9700 2650 9800 2650
Wire Wire Line
	9500 2800 9500 3000
Wire Notes Line
	6950 5500 9800 5500
Wire Notes Line
	9800 5500 9800 6450
Wire Notes Line
	9800 6450 6950 6450
Wire Notes Line
	6950 6450 6950 5500
Text Notes 7750 5650 0    59   ~ 0
Récepteur AM ASK OOK RFM210LCF-A
$Comp
L Connector:Conn_01x03_Female J9
U 1 1 6842D05D
P 9000 5850
F 0 "J9" V 8938 5662 50  0000 R CNN
F 1 "Conn_01x03_Female" V 9100 5950 50  0000 R CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 9000 5850 50  0001 C CNN
F 3 "~" H 9000 5850 50  0001 C CNN
	1    9000 5850
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x02_Female J4
U 1 1 6842E5FA
P 8200 5850
F 0 "J4" V 8138 5662 50  0000 R CNN
F 1 "Conn_01x02_Female" V 8300 6200 50  0000 R CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 8200 5850 50  0001 C CNN
F 3 "~" H 8200 5850 50  0001 C CNN
	1    8200 5850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9100 6050 9100 6350
Wire Wire Line
	9000 6050 9000 6350
Wire Wire Line
	8900 6050 8900 6350
Text Label 9100 6350 1    50   ~ 0
VDD
Text Label 8900 6350 1    50   ~ 0
GND
Text Label 9000 6350 1    50   ~ 0
RX
Wire Wire Line
	8300 6050 8300 6350
Wire Wire Line
	8200 6050 8200 6350
Text Label 8300 6350 1    50   ~ 0
GND
Text Label 8200 6350 1    50   ~ 0
ANT
$Comp
L Connector:Conn_01x04_Female J3
U 1 1 684613DA
P 8200 4450
F 0 "J3" V 8138 4598 50  0000 L CNN
F 1 "Conn_01x04_Female" V 8300 4050 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 8200 4450 50  0001 C CNN
F 3 "~" H 8200 4450 50  0001 C CNN
	1    8200 4450
	0    1    -1   0   
$EndComp
$Comp
L Connector:Conn_01x04_Female J10
U 1 1 6847E523
P 9250 4450
F 0 "J10" V 9188 4598 50  0000 L CNN
F 1 "Conn_01x04_Female" V 9350 4050 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 9250 4450 50  0001 C CNN
F 3 "~" H 9250 4450 50  0001 C CNN
	1    9250 4450
	0    1    -1   0   
$EndComp
$EndSCHEMATC
