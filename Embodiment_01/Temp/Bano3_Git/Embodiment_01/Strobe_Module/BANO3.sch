EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A2 23386 16535
encoding utf-8
Sheet 1 1
Title "BANO3"
Date "2021-06-08"
Rev ""
Comp "Dolphine"
Comment1 "0001"
Comment2 "A.Zobenko"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:R R1
U 1 1 60BF93B8
P 7200 4000
F 0 "R1" H 7270 4046 50  0000 L CNN
F 1 "100k" H 7270 3955 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7130 4000 50  0001 C CNN
F 3 "~" H 7200 4000 50  0001 C CNN
	1    7200 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 60BF97DB
P 7200 5100
F 0 "R2" H 7270 5146 50  0000 L CNN
F 1 "43.2k" H 7270 5055 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7130 5100 50  0001 C CNN
F 3 "~" H 7200 5100 50  0001 C CNN
	1    7200 5100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 60C01303
P 7850 4000
F 0 "R4" H 7920 4046 50  0000 L CNN
F 1 "1k" H 7920 3955 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7780 4000 50  0001 C CNN
F 3 "~" H 7850 4000 50  0001 C CNN
	1    7850 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 60C0207C
P 7850 4600
F 0 "C7" H 7965 4646 50  0000 L CNN
F 1 "22pF" H 7965 4555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7888 4450 50  0001 C CNN
F 3 "~" H 7850 4600 50  0001 C CNN
	1    7850 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 60C02A31
P 6500 3350
F 0 "C2" H 6615 3396 50  0000 L CNN
F 1 "4.7uF" H 6615 3305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6538 3200 50  0001 C CNN
F 3 "~" H 6500 3350 50  0001 C CNN
	1    6500 3350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 60C0EB47
P 7200 5450
F 0 "#PWR09" H 7200 5200 50  0001 C CNN
F 1 "GND" H 7205 5277 50  0000 C CNN
F 2 "" H 7200 5450 50  0001 C CNN
F 3 "" H 7200 5450 50  0001 C CNN
	1    7200 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 5250 7200 5450
$Comp
L Device:C C8
U 1 1 60BFB075
P 8200 3950
F 0 "C8" H 8315 3996 50  0000 L CNN
F 1 "22uF" H 8315 3905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8238 3800 50  0001 C CNN
F 3 "~" H 8200 3950 50  0001 C CNN
	1    8200 3950
	1    0    0    -1  
$EndComp
$Comp
L Device:L L1
U 1 1 60C132E6
P 6650 3700
F 0 "L1" V 6840 3700 50  0000 C CNN
F 1 "1.5nH" V 6749 3700 50  0000 C CNN
F 2 "Inductor_SMD:L_Bourns-SRN6028" H 6650 3700 50  0001 C CNN
F 3 "~" H 6650 3700 50  0001 C CNN
	1    6650 3700
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR010
U 1 1 60C18FF4
P 8200 4200
F 0 "#PWR010" H 8200 3950 50  0001 C CNN
F 1 "GND" H 8205 4027 50  0000 C CNN
F 2 "" H 8200 4200 50  0001 C CNN
F 3 "" H 8200 4200 50  0001 C CNN
	1    8200 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 60C1A404
P 6800 3350
F 0 "C4" H 6915 3396 50  0000 L CNN
F 1 "2.2nF" H 6915 3305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6838 3200 50  0001 C CNN
F 3 "~" H 6800 3350 50  0001 C CNN
	1    6800 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 60C1AC48
P 6800 4050
F 0 "C5" H 6915 4096 50  0000 L CNN
F 1 "2.2nF" H 6915 4005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6838 3900 50  0001 C CNN
F 3 "~" H 6800 4050 50  0001 C CNN
	1    6800 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 3200 6650 3200
$Comp
L power:GND #PWR07
U 1 1 60C1BA42
P 6650 3150
F 0 "#PWR07" H 6650 2900 50  0001 C CNN
F 1 "GND" H 6655 2977 50  0000 C CNN
F 2 "" H 6650 3150 50  0001 C CNN
F 3 "" H 6650 3150 50  0001 C CNN
	1    6650 3150
	-1   0    0    1   
$EndComp
Wire Wire Line
	6500 4200 6500 4250
Wire Wire Line
	6650 3200 6650 3150
Wire Wire Line
	6800 4200 6800 4250
Wire Wire Line
	8200 3700 8200 3800
Wire Wire Line
	8200 4100 8200 4200
$Comp
L power:GND #PWR05
U 1 1 60C34119
P 3200 3900
F 0 "#PWR05" H 3200 3650 50  0001 C CNN
F 1 "GND" H 3205 3727 50  0000 C CNN
F 2 "" H 3200 3900 50  0001 C CNN
F 3 "" H 3200 3900 50  0001 C CNN
	1    3200 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 60C3557B
P 2500 3550
F 0 "C1" H 2615 3596 50  0000 L CNN
F 1 "1uF" H 2615 3505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2538 3400 50  0001 C CNN
F 3 "~" H 2500 3550 50  0001 C CNN
	1    2500 3550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 60C38E35
P 2500 3850
F 0 "#PWR03" H 2500 3600 50  0001 C CNN
F 1 "GND" H 2505 3677 50  0000 C CNN
F 2 "" H 2500 3850 50  0001 C CNN
F 3 "" H 2500 3850 50  0001 C CNN
	1    2500 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 3700 2500 3850
Wire Wire Line
	7200 4150 7200 4850
Wire Wire Line
	7850 4150 7850 4450
Wire Wire Line
	7200 3700 7200 3850
Wire Wire Line
	7850 3700 7850 3850
Connection ~ 7200 3700
Wire Wire Line
	7850 4750 7850 4850
Wire Wire Line
	7850 4850 7200 4850
Connection ~ 7200 4850
Wire Wire Line
	7200 4850 7200 4950
Connection ~ 7850 3700
Connection ~ 8200 3700
Wire Wire Line
	8200 3700 7850 3700
$Comp
L Device:C C10
U 1 1 60C0DCE3
P 9150 3950
F 0 "C10" H 9265 3996 50  0000 L CNN
F 1 "22uF" H 9265 3905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9188 3800 50  0001 C CNN
F 3 "~" H 9150 3950 50  0001 C CNN
	1    9150 3950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 60C0E338
P 8700 4200
F 0 "#PWR011" H 8700 3950 50  0001 C CNN
F 1 "GND" H 8705 4027 50  0000 C CNN
F 2 "" H 8700 4200 50  0001 C CNN
F 3 "" H 8700 4200 50  0001 C CNN
	1    8700 4200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 60C0EC09
P 9150 4200
F 0 "#PWR012" H 9150 3950 50  0001 C CNN
F 1 "GND" H 9155 4027 50  0000 C CNN
F 2 "" H 9150 4200 50  0001 C CNN
F 3 "" H 9150 4200 50  0001 C CNN
	1    9150 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 4100 9150 4200
Wire Wire Line
	9150 3800 9150 3700
Wire Wire Line
	8700 3800 8700 3700
$Comp
L Device:C C9
U 1 1 60C0D3AE
P 8700 3950
F 0 "C9" H 8815 3996 50  0000 L CNN
F 1 "22uF" H 8815 3905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8738 3800 50  0001 C CNN
F 3 "~" H 8700 3950 50  0001 C CNN
	1    8700 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 4100 8700 4200
$Comp
L power:VCC #PWR01
U 1 1 60C2BC86
P 4050 2100
F 0 "#PWR01" H 4050 1950 50  0001 C CNN
F 1 "VCC" H 4067 2273 50  0000 C CNN
F 2 "" H 4050 2100 50  0001 C CNN
F 3 "" H 4050 2100 50  0001 C CNN
	1    4050 2100
	1    0    0    -1  
$EndComp
Connection ~ 8700 3700
Wire Wire Line
	8200 3700 8700 3700
Connection ~ 9150 3700
Wire Wire Line
	8700 3700 9150 3700
$Comp
L power:PWR_FLAG #FLG01
U 1 1 60C6D536
P 7550 2500
F 0 "#FLG01" H 7550 2575 50  0001 C CNN
F 1 "PWR_FLAG" H 7550 2673 50  0000 C CNN
F 2 "" H 7550 2500 50  0001 C CNN
F 3 "~" H 7550 2500 50  0001 C CNN
	1    7550 2500
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR02
U 1 1 60C6EA8B
P 7550 2600
F 0 "#PWR02" H 7550 2450 50  0001 C CNN
F 1 "VCC" H 7568 2773 50  0000 C CNN
F 2 "" H 7550 2600 50  0001 C CNN
F 3 "" H 7550 2600 50  0001 C CNN
	1    7550 2600
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR04
U 1 1 60C6FA12
P 8200 2550
F 0 "#PWR04" H 8200 2300 50  0001 C CNN
F 1 "GND" H 8205 2377 50  0000 C CNN
F 2 "" H 8200 2550 50  0001 C CNN
F 3 "" H 8200 2550 50  0001 C CNN
	1    8200 2550
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 60C6FF34
P 8200 2450
F 0 "#FLG02" H 8200 2525 50  0001 C CNN
F 1 "PWR_FLAG" H 8200 2623 50  0000 C CNN
F 2 "" H 8200 2450 50  0001 C CNN
F 3 "~" H 8200 2450 50  0001 C CNN
	1    8200 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 2450 8200 2550
Wire Wire Line
	7550 2500 7550 2600
$Comp
L 2021-06-24_16-56-35:LM62435BPPQRJRRQ1 U1
U 1 1 60D504B8
P 3500 3300
F 0 "U1" H 4500 3687 60  0000 C CNN
F 1 "LM62435BPPQRJRRQ1" H 4500 3581 60  0000 C CNN
F 2 "LM62435BPPQRJRRQ1:LM62435BPPQRJRRQ1" H 4500 3540 60  0001 C CNN
F 3 "" H 3500 3300 60  0000 C CNN
	1    3500 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 3600 2850 3600
Wire Wire Line
	2850 4850 7200 4850
Wire Wire Line
	2850 3600 2850 4850
Wire Wire Line
	5500 3900 5650 3900
Wire Wire Line
	5650 3900 5650 3500
Wire Wire Line
	5650 3500 5500 3500
Wire Wire Line
	5500 3600 5550 3600
Wire Wire Line
	5550 3600 5550 3800
Wire Wire Line
	5550 3800 5500 3800
$Comp
L power:GND #PWR06
U 1 1 60C2E1B7
P 5550 4150
F 0 "#PWR06" H 5550 3900 50  0001 C CNN
F 1 "GND" H 5555 3977 50  0000 C CNN
F 2 "" H 5550 4150 50  0001 C CNN
F 3 "" H 5550 4150 50  0001 C CNN
	1    5550 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 3800 5550 4150
Connection ~ 5550 3800
Wire Wire Line
	2500 3400 3500 3400
Wire Wire Line
	3200 3900 3200 3800
Wire Wire Line
	3200 3800 3500 3800
Wire Wire Line
	3500 3500 3200 3500
Wire Wire Line
	3200 3500 3200 3800
Connection ~ 3200 3800
Connection ~ 6650 3200
Wire Wire Line
	6650 3200 6500 3200
Wire Wire Line
	6500 3500 6800 3500
Wire Wire Line
	6700 4300 6700 4250
Wire Wire Line
	6800 4250 6700 4250
Wire Wire Line
	6800 3900 6500 3900
Connection ~ 6500 3900
$Comp
L Device:C C3
U 1 1 60BFA4F2
P 6500 4050
F 0 "C3" H 6615 4096 50  0000 L CNN
F 1 "4.7uF" H 6615 4005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6538 3900 50  0001 C CNN
F 3 "~" H 6500 4050 50  0001 C CNN
	1    6500 4050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 60DADCE0
P 6700 4300
F 0 "#PWR08" H 6700 4050 50  0001 C CNN
F 1 "GND" H 6705 4127 50  0000 C CNN
F 2 "" H 6700 4300 50  0001 C CNN
F 3 "" H 6700 4300 50  0001 C CNN
	1    6700 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 4250 6700 4250
Connection ~ 6700 4250
Connection ~ 6500 3500
Wire Wire Line
	3500 3300 3500 2850
Wire Wire Line
	6950 2850 6950 3700
$Comp
L Device:R R5
U 1 1 60DD2C72
P 5700 3400
F 0 "R5" H 5770 3446 50  0000 L CNN
F 1 "100" H 5770 3355 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5630 3400 50  0001 C CNN
F 3 "~" H 5700 3400 50  0001 C CNN
	1    5700 3400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5550 3400 5500 3400
Wire Wire Line
	5900 3300 5900 3400
Wire Wire Line
	5900 3400 5850 3400
$Comp
L Device:C C6
U 1 1 60DE46D1
P 6050 3300
F 0 "C6" H 6165 3346 50  0000 L CNN
F 1 "0.1uF" H 6165 3255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6088 3150 50  0001 C CNN
F 3 "~" H 6050 3300 50  0001 C CNN
	1    6050 3300
	0    -1   -1   0   
$EndComp
Connection ~ 6950 3700
Wire Wire Line
	6950 3700 7200 3700
Wire Wire Line
	3500 2850 6950 2850
Wire Wire Line
	5650 3900 6200 3900
Connection ~ 5650 3900
Wire Wire Line
	5650 3500 6350 3500
Connection ~ 5650 3500
Wire Wire Line
	6800 3700 6950 3700
Wire Wire Line
	5500 3700 6200 3700
Wire Wire Line
	6200 3300 6200 3700
Connection ~ 6200 3700
Wire Wire Line
	6200 3700 6500 3700
Wire Wire Line
	4050 2100 6350 2100
Wire Wire Line
	6350 2100 6350 3500
Connection ~ 6350 3500
Wire Wire Line
	6350 3500 6500 3500
Connection ~ 4050 2100
Wire Wire Line
	3500 3900 3350 3900
Wire Wire Line
	9150 3700 9600 3700
Wire Wire Line
	5500 3300 5500 3100
Wire Wire Line
	5500 3100 5900 3100
Wire Wire Line
	5900 3100 5900 3300
Connection ~ 5900 3300
$Comp
L BANOv03:Pin_0.5 XS2
U 1 1 60E48A5E
P 2750 2150
F 0 "XS2" H 2693 1919 50  0000 C CNN
F 1 "Pin_0.5" H 2693 2010 50  0000 C CNN
F 2 "BANO3_01:pin_0.8" H 2800 2150 50  0001 C CNN
F 3 "" H 2800 2150 50  0001 C CNN
	1    2750 2150
	-1   0    0    1   
$EndComp
$Comp
L BANOv03:Pin_0.5 XS1
U 1 1 60E49AE6
P 2450 2700
F 0 "XS1" H 2478 2718 50  0000 L CNN
F 1 "Pin_0.5" H 2478 2627 50  0000 L CNN
F 2 "BANO3_01:pin_0.8" H 2500 2700 50  0001 C CNN
F 3 "" H 2500 2700 50  0001 C CNN
	1    2450 2700
	-1   0    0    1   
$EndComp
$Comp
L BANOv03:Pin_0.5 XS4
U 1 1 60E50B2A
P 10050 3650
F 0 "XS4" H 10078 3668 50  0000 L CNN
F 1 "Pin_0.5" H 10078 3577 50  0000 L CNN
F 2 "BANO3_01:pin_0.8" H 10100 3650 50  0001 C CNN
F 3 "" H 10100 3650 50  0001 C CNN
	1    10050 3650
	1    0    0    -1  
$EndComp
$Comp
L BANOv03:Pin_0.5 XS11
U 1 1 60E8B3B9
P 9550 2350
F 0 "XS11" H 9578 2368 50  0000 L CNN
F 1 "Pin_0.5" H 9578 2277 50  0000 L CNN
F 2 "BANO3_01:pin_0.8" H 9600 2350 50  0001 C CNN
F 3 "" H 9600 2350 50  0001 C CNN
	1    9550 2350
	-1   0    0    1   
$EndComp
$Comp
L BANOv03:Pin_0.5 XS12
U 1 1 60E90401
P 9550 2550
F 0 "XS12" H 9578 2568 50  0000 L CNN
F 1 "Pin_0.5" H 9578 2477 50  0000 L CNN
F 2 "BANO3_01:pin_0.8" H 9600 2550 50  0001 C CNN
F 3 "" H 9600 2550 50  0001 C CNN
	1    9550 2550
	-1   0    0    1   
$EndComp
$Comp
L BANOv03:Pin_0.5 XS17
U 1 1 60EAA96F
P 10100 2450
F 0 "XS17" H 10128 2468 50  0000 L CNN
F 1 "Pin_0.5" H 10128 2377 50  0000 L CNN
F 2 "BANO3_01:pin_0.8" H 10150 2450 50  0001 C CNN
F 3 "" H 10150 2450 50  0001 C CNN
	1    10100 2450
	1    0    0    -1  
$EndComp
$Comp
L BANOv03:Pin_0.5 XS16
U 1 1 60EAA975
P 10100 2250
F 0 "XS16" H 10128 2268 50  0000 L CNN
F 1 "Pin_0.5" H 10128 2177 50  0000 L CNN
F 2 "BANO3_01:pin_0.8" H 10150 2250 50  0001 C CNN
F 3 "" H 10150 2250 50  0001 C CNN
	1    10100 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 2300 10000 2300
Wire Wire Line
	9650 2500 10000 2500
Wire Wire Line
	7200 3700 7850 3700
$Comp
L Device:C C19
U 1 1 60F0280E
P 9600 3950
F 0 "C19" H 9715 3996 50  0000 L CNN
F 1 "22uF" H 9715 3905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9638 3800 50  0001 C CNN
F 3 "~" H 9600 3950 50  0001 C CNN
	1    9600 3950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR023
U 1 1 60F02814
P 9600 4200
F 0 "#PWR023" H 9600 3950 50  0001 C CNN
F 1 "GND" H 9605 4027 50  0000 C CNN
F 2 "" H 9600 4200 50  0001 C CNN
F 3 "" H 9600 4200 50  0001 C CNN
	1    9600 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 4100 9600 4200
Wire Wire Line
	9600 3800 9600 3700
Connection ~ 9600 3700
Wire Wire Line
	9600 3700 9950 3700
$Comp
L Device:C C20
U 1 1 60F192DB
P 6200 4150
F 0 "C20" H 6315 4196 50  0000 L CNN
F 1 "4.7uF" H 6315 4105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6238 4000 50  0001 C CNN
F 3 "~" H 6200 4150 50  0001 C CNN
	1    6200 4150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR024
U 1 1 60F23BD8
P 6200 4400
F 0 "#PWR024" H 6200 4150 50  0001 C CNN
F 1 "GND" H 6205 4227 50  0000 C CNN
F 2 "" H 6200 4400 50  0001 C CNN
F 3 "" H 6200 4400 50  0001 C CNN
	1    6200 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 4400 6200 4300
Wire Wire Line
	6200 4000 6200 3900
Connection ~ 6200 3900
Wire Wire Line
	6200 3900 6500 3900
Wire Wire Line
	2850 2100 4050 2100
Wire Wire Line
	2550 2650 3350 2650
Wire Wire Line
	3350 2650 3350 3900
$EndSCHEMATC