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
P 7900 4700
F 0 "R1" H 7970 4746 50  0000 L CNN
F 1 "100k" H 7970 4655 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7830 4700 50  0001 C CNN
F 3 "~" H 7900 4700 50  0001 C CNN
	1    7900 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 60BF97DB
P 7900 5800
F 0 "R2" H 7970 5846 50  0000 L CNN
F 1 "43.2k" H 7970 5755 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7830 5800 50  0001 C CNN
F 3 "~" H 7900 5800 50  0001 C CNN
	1    7900 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 60C01303
P 8550 4700
F 0 "R4" H 8620 4746 50  0000 L CNN
F 1 "1k" H 8620 4655 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8480 4700 50  0001 C CNN
F 3 "~" H 8550 4700 50  0001 C CNN
	1    8550 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 60C0207C
P 8550 5300
F 0 "C7" H 8665 5346 50  0000 L CNN
F 1 "22pF" H 8665 5255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8588 5150 50  0001 C CNN
F 3 "~" H 8550 5300 50  0001 C CNN
	1    8550 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 60C02A31
P 7200 4050
F 0 "C2" H 7315 4096 50  0000 L CNN
F 1 "4.7uF" H 7315 4005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7238 3900 50  0001 C CNN
F 3 "~" H 7200 4050 50  0001 C CNN
	1    7200 4050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 60C0EB47
P 7900 6150
F 0 "#PWR09" H 7900 5900 50  0001 C CNN
F 1 "GND" H 7905 5977 50  0000 C CNN
F 2 "" H 7900 6150 50  0001 C CNN
F 3 "" H 7900 6150 50  0001 C CNN
	1    7900 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 5950 7900 6150
$Comp
L Device:C C8
U 1 1 60BFB075
P 8900 4650
F 0 "C8" H 9015 4696 50  0000 L CNN
F 1 "22uF" H 9015 4605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8938 4500 50  0001 C CNN
F 3 "~" H 8900 4650 50  0001 C CNN
	1    8900 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:L L1
U 1 1 60C132E6
P 7350 4400
F 0 "L1" V 7540 4400 50  0000 C CNN
F 1 "1.5nH" V 7449 4400 50  0000 C CNN
F 2 "Inductor_SMD:L_Bourns-SRN6028" H 7350 4400 50  0001 C CNN
F 3 "~" H 7350 4400 50  0001 C CNN
	1    7350 4400
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR010
U 1 1 60C18FF4
P 8900 4900
F 0 "#PWR010" H 8900 4650 50  0001 C CNN
F 1 "GND" H 8905 4727 50  0000 C CNN
F 2 "" H 8900 4900 50  0001 C CNN
F 3 "" H 8900 4900 50  0001 C CNN
	1    8900 4900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 60C1A404
P 7500 4050
F 0 "C4" H 7615 4096 50  0000 L CNN
F 1 "2.2nF" H 7615 4005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7538 3900 50  0001 C CNN
F 3 "~" H 7500 4050 50  0001 C CNN
	1    7500 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 60C1AC48
P 7500 4750
F 0 "C5" H 7615 4796 50  0000 L CNN
F 1 "2.2nF" H 7615 4705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7538 4600 50  0001 C CNN
F 3 "~" H 7500 4750 50  0001 C CNN
	1    7500 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 3900 7350 3900
$Comp
L power:GND #PWR07
U 1 1 60C1BA42
P 7350 3850
F 0 "#PWR07" H 7350 3600 50  0001 C CNN
F 1 "GND" H 7355 3677 50  0000 C CNN
F 2 "" H 7350 3850 50  0001 C CNN
F 3 "" H 7350 3850 50  0001 C CNN
	1    7350 3850
	-1   0    0    1   
$EndComp
Wire Wire Line
	7200 4900 7200 4950
Wire Wire Line
	7350 3900 7350 3850
Wire Wire Line
	7500 4900 7500 4950
Wire Wire Line
	8900 4400 8900 4500
Wire Wire Line
	8900 4800 8900 4900
$Comp
L power:GND #PWR05
U 1 1 60C34119
P 3900 4600
F 0 "#PWR05" H 3900 4350 50  0001 C CNN
F 1 "GND" H 3905 4427 50  0000 C CNN
F 2 "" H 3900 4600 50  0001 C CNN
F 3 "" H 3900 4600 50  0001 C CNN
	1    3900 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 60C3557B
P 3200 4250
F 0 "C1" H 3315 4296 50  0000 L CNN
F 1 "1uF" H 3315 4205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3238 4100 50  0001 C CNN
F 3 "~" H 3200 4250 50  0001 C CNN
	1    3200 4250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 60C38E35
P 3200 4550
F 0 "#PWR03" H 3200 4300 50  0001 C CNN
F 1 "GND" H 3205 4377 50  0000 C CNN
F 2 "" H 3200 4550 50  0001 C CNN
F 3 "" H 3200 4550 50  0001 C CNN
	1    3200 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 4400 3200 4550
Wire Wire Line
	7900 4850 7900 5550
Wire Wire Line
	8550 4850 8550 5150
Wire Wire Line
	7900 4400 7900 4550
Wire Wire Line
	8550 4400 8550 4550
Connection ~ 7900 4400
Wire Wire Line
	8550 5450 8550 5550
Wire Wire Line
	8550 5550 7900 5550
Connection ~ 7900 5550
Wire Wire Line
	7900 5550 7900 5650
Connection ~ 8550 4400
Connection ~ 8900 4400
Wire Wire Line
	8900 4400 8550 4400
$Comp
L Device:C C10
U 1 1 60C0DCE3
P 9850 4650
F 0 "C10" H 9965 4696 50  0000 L CNN
F 1 "22uF" H 9965 4605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9888 4500 50  0001 C CNN
F 3 "~" H 9850 4650 50  0001 C CNN
	1    9850 4650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 60C0E338
P 9400 4900
F 0 "#PWR011" H 9400 4650 50  0001 C CNN
F 1 "GND" H 9405 4727 50  0000 C CNN
F 2 "" H 9400 4900 50  0001 C CNN
F 3 "" H 9400 4900 50  0001 C CNN
	1    9400 4900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 60C0EC09
P 9850 4900
F 0 "#PWR012" H 9850 4650 50  0001 C CNN
F 1 "GND" H 9855 4727 50  0000 C CNN
F 2 "" H 9850 4900 50  0001 C CNN
F 3 "" H 9850 4900 50  0001 C CNN
	1    9850 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 4800 9850 4900
Wire Wire Line
	9850 4500 9850 4400
Wire Wire Line
	9400 4500 9400 4400
$Comp
L Device:C C9
U 1 1 60C0D3AE
P 9400 4650
F 0 "C9" H 9515 4696 50  0000 L CNN
F 1 "22uF" H 9515 4605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9438 4500 50  0001 C CNN
F 3 "~" H 9400 4650 50  0001 C CNN
	1    9400 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 4800 9400 4900
$Comp
L power:VCC #PWR01
U 1 1 60C2BC86
P 4750 2800
F 0 "#PWR01" H 4750 2650 50  0001 C CNN
F 1 "VCC" H 4767 2973 50  0000 C CNN
F 2 "" H 4750 2800 50  0001 C CNN
F 3 "" H 4750 2800 50  0001 C CNN
	1    4750 2800
	1    0    0    -1  
$EndComp
Connection ~ 9400 4400
Wire Wire Line
	8900 4400 9400 4400
Connection ~ 9850 4400
Wire Wire Line
	9400 4400 9850 4400
$Comp
L power:PWR_FLAG #FLG01
U 1 1 60C6D536
P 3250 1350
F 0 "#FLG01" H 3250 1425 50  0001 C CNN
F 1 "PWR_FLAG" H 3250 1523 50  0000 C CNN
F 2 "" H 3250 1350 50  0001 C CNN
F 3 "~" H 3250 1350 50  0001 C CNN
	1    3250 1350
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR02
U 1 1 60C6EA8B
P 3250 1450
F 0 "#PWR02" H 3250 1300 50  0001 C CNN
F 1 "VCC" H 3268 1623 50  0000 C CNN
F 2 "" H 3250 1450 50  0001 C CNN
F 3 "" H 3250 1450 50  0001 C CNN
	1    3250 1450
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR04
U 1 1 60C6FA12
P 3900 1400
F 0 "#PWR04" H 3900 1150 50  0001 C CNN
F 1 "GND" H 3905 1227 50  0000 C CNN
F 2 "" H 3900 1400 50  0001 C CNN
F 3 "" H 3900 1400 50  0001 C CNN
	1    3900 1400
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 60C6FF34
P 3900 1300
F 0 "#FLG02" H 3900 1375 50  0001 C CNN
F 1 "PWR_FLAG" H 3900 1473 50  0000 C CNN
F 2 "" H 3900 1300 50  0001 C CNN
F 3 "~" H 3900 1300 50  0001 C CNN
	1    3900 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 1300 3900 1400
Wire Wire Line
	3250 1350 3250 1450
$Comp
L BANO3-rescue:LM62435BPPQRJRRQ1-2021-06-24_16-56-35 U1
U 1 1 60D504B8
P 4200 4000
F 0 "U1" H 5200 4387 60  0000 C CNN
F 1 "LM62435BPPQRJRRQ1" H 5200 4281 60  0000 C CNN
F 2 "LM62435BPPQRJRRQ1:LM62435BPPQRJRRQ1" H 5200 4240 60  0001 C CNN
F 3 "" H 4200 4000 60  0000 C CNN
	1    4200 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 4300 3550 4300
Wire Wire Line
	3550 5550 7900 5550
Wire Wire Line
	3550 4300 3550 5550
Wire Wire Line
	6200 4600 6350 4600
Wire Wire Line
	6350 4600 6350 4200
Wire Wire Line
	6350 4200 6200 4200
Wire Wire Line
	6200 4300 6250 4300
Wire Wire Line
	6250 4300 6250 4500
Wire Wire Line
	6250 4500 6200 4500
$Comp
L power:GND #PWR06
U 1 1 60C2E1B7
P 6250 4850
F 0 "#PWR06" H 6250 4600 50  0001 C CNN
F 1 "GND" H 6255 4677 50  0000 C CNN
F 2 "" H 6250 4850 50  0001 C CNN
F 3 "" H 6250 4850 50  0001 C CNN
	1    6250 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 4500 6250 4850
Connection ~ 6250 4500
Wire Wire Line
	3200 4100 4200 4100
Wire Wire Line
	3900 4600 3900 4500
Wire Wire Line
	3900 4500 4200 4500
Wire Wire Line
	4200 4200 3900 4200
Wire Wire Line
	3900 4200 3900 4500
Connection ~ 3900 4500
Connection ~ 7350 3900
Wire Wire Line
	7350 3900 7200 3900
Wire Wire Line
	7200 4200 7500 4200
Wire Wire Line
	7400 5000 7400 4950
Wire Wire Line
	7500 4950 7400 4950
Wire Wire Line
	7500 4600 7200 4600
Connection ~ 7200 4600
$Comp
L Device:C C3
U 1 1 60BFA4F2
P 7200 4750
F 0 "C3" H 7315 4796 50  0000 L CNN
F 1 "4.7uF" H 7315 4705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7238 4600 50  0001 C CNN
F 3 "~" H 7200 4750 50  0001 C CNN
	1    7200 4750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 60DADCE0
P 7400 5000
F 0 "#PWR08" H 7400 4750 50  0001 C CNN
F 1 "GND" H 7405 4827 50  0000 C CNN
F 2 "" H 7400 5000 50  0001 C CNN
F 3 "" H 7400 5000 50  0001 C CNN
	1    7400 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 4950 7400 4950
Connection ~ 7400 4950
Connection ~ 7200 4200
Wire Wire Line
	4200 4000 4200 3550
Wire Wire Line
	7650 3550 7650 4400
$Comp
L Device:R R5
U 1 1 60DD2C72
P 6400 4100
F 0 "R5" H 6470 4146 50  0000 L CNN
F 1 "100" H 6470 4055 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6330 4100 50  0001 C CNN
F 3 "~" H 6400 4100 50  0001 C CNN
	1    6400 4100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6250 4100 6200 4100
Wire Wire Line
	6600 4000 6600 4100
Wire Wire Line
	6600 4100 6550 4100
$Comp
L Device:C C6
U 1 1 60DE46D1
P 6750 4000
F 0 "C6" H 6865 4046 50  0000 L CNN
F 1 "0.1uF" H 6865 3955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6788 3850 50  0001 C CNN
F 3 "~" H 6750 4000 50  0001 C CNN
	1    6750 4000
	0    -1   -1   0   
$EndComp
Connection ~ 7650 4400
Wire Wire Line
	7650 4400 7900 4400
Wire Wire Line
	4200 3550 7650 3550
Wire Wire Line
	6350 4600 6900 4600
Connection ~ 6350 4600
Wire Wire Line
	6350 4200 7050 4200
Connection ~ 6350 4200
Wire Wire Line
	7500 4400 7650 4400
Wire Wire Line
	6200 4400 6900 4400
Wire Wire Line
	6900 4000 6900 4400
Connection ~ 6900 4400
Wire Wire Line
	6900 4400 7200 4400
Wire Wire Line
	4750 2800 7050 2800
Wire Wire Line
	7050 2800 7050 4200
Connection ~ 7050 4200
Wire Wire Line
	7050 4200 7200 4200
Connection ~ 4750 2800
Wire Wire Line
	4200 4600 4050 4600
Wire Wire Line
	9850 4400 10300 4400
Wire Wire Line
	6200 4000 6200 3800
Wire Wire Line
	6200 3800 6600 3800
Wire Wire Line
	6600 3800 6600 4000
Connection ~ 6600 4000
$Comp
L BANO3-rescue:Pin_0.5-BANOv03 XS2
U 1 1 60E48A5E
P 3450 2850
F 0 "XS2" H 3393 2619 50  0000 C CNN
F 1 "Pin_0.5" H 3393 2710 50  0000 C CNN
F 2 "BANO3_01:pin_0.8" H 3500 2850 50  0001 C CNN
F 3 "" H 3500 2850 50  0001 C CNN
	1    3450 2850
	-1   0    0    1   
$EndComp
$Comp
L BANO3-rescue:Pin_0.5-BANOv03 XS1
U 1 1 60E49AE6
P 3150 3400
F 0 "XS1" H 3178 3418 50  0000 L CNN
F 1 "Pin_0.5" H 3178 3327 50  0000 L CNN
F 2 "BANO3_01:pin_0.8" H 3200 3400 50  0001 C CNN
F 3 "" H 3200 3400 50  0001 C CNN
	1    3150 3400
	-1   0    0    1   
$EndComp
$Comp
L BANO3-rescue:Pin_0.5-BANOv03 XS4
U 1 1 60E50B2A
P 10750 4350
F 0 "XS4" H 10778 4368 50  0000 L CNN
F 1 "Pin_0.5" H 10778 4277 50  0000 L CNN
F 2 "BANO3_01:pin_0.8" H 10800 4350 50  0001 C CNN
F 3 "" H 10800 4350 50  0001 C CNN
	1    10750 4350
	1    0    0    -1  
$EndComp
$Comp
L BANO3-rescue:LM60440DRPKR-2021-06-24_16-54-57 U2
U 1 1 60E5ED58
P 4450 6800
F 0 "U2" H 5100 7188 60  0000 C CNN
F 1 "LM60440DRPKR" H 5100 7082 60  0000 C CNN
F 2 "LM60440DRPKR:LM60440DRPKR" H 4450 6740 60  0001 C CNN
F 3 "" H 4450 6800 60  0000 C CNN
	1    4450 6800
	1    0    0    -1  
$EndComp
$Comp
L Device:L L2
U 1 1 60DA231A
P 6500 6800
F 0 "L2" V 6690 6800 50  0000 C CNN
F 1 "L" V 6599 6800 50  0000 C CNN
F 2 "Inductor_SMD:L_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 6500 6800 50  0001 C CNN
F 3 "~" H 6500 6800 50  0001 C CNN
	1    6500 6800
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C15
U 1 1 60DA3BF9
P 6000 6800
F 0 "C15" V 5748 6800 50  0000 C CNN
F 1 "C" V 5839 6800 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6038 6650 50  0001 C CNN
F 3 "~" H 6000 6800 50  0001 C CNN
	1    6000 6800
	0    1    1    0   
$EndComp
Wire Wire Line
	5750 6800 5850 6800
Wire Wire Line
	6250 6800 6250 7000
$Comp
L Device:C C16
U 1 1 60DB4658
P 6750 7150
F 0 "C16" H 6865 7196 50  0000 L CNN
F 1 "C" H 6865 7105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6788 7000 50  0001 C CNN
F 3 "~" H 6750 7150 50  0001 C CNN
	1    6750 7150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C17
U 1 1 60DB54E0
P 7350 7050
F 0 "C17" H 7465 7096 50  0000 L CNN
F 1 "C" H 7465 7005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7388 6900 50  0001 C CNN
F 3 "~" H 7350 7050 50  0001 C CNN
	1    7350 7050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C18
U 1 1 60DB8DCA
P 7700 7050
F 0 "C18" H 7815 7096 50  0000 L CNN
F 1 "C" H 7815 7005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7738 6900 50  0001 C CNN
F 3 "~" H 7700 7050 50  0001 C CNN
	1    7700 7050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR022
U 1 1 60DBB907
P 7700 7350
F 0 "#PWR022" H 7700 7100 50  0001 C CNN
F 1 "GND" H 7705 7177 50  0000 C CNN
F 2 "" H 7700 7350 50  0001 C CNN
F 3 "" H 7700 7350 50  0001 C CNN
	1    7700 7350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR021
U 1 1 60DBD8C1
P 7350 7350
F 0 "#PWR021" H 7350 7100 50  0001 C CNN
F 1 "GND" H 7355 7177 50  0000 C CNN
F 2 "" H 7350 7350 50  0001 C CNN
F 3 "" H 7350 7350 50  0001 C CNN
	1    7350 7350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR019
U 1 1 60DC016C
P 5850 8150
F 0 "#PWR019" H 5850 7900 50  0001 C CNN
F 1 "GND" H 5855 7977 50  0000 C CNN
F 2 "" H 5850 8150 50  0001 C CNN
F 3 "" H 5850 8150 50  0001 C CNN
	1    5850 8150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR020
U 1 1 60DC2680
P 7000 8100
F 0 "#PWR020" H 7000 7850 50  0001 C CNN
F 1 "GND" H 7005 7927 50  0000 C CNN
F 2 "" H 7000 8100 50  0001 C CNN
F 3 "" H 7000 8100 50  0001 C CNN
	1    7000 8100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 60DCAE9E
P 7000 7150
F 0 "R6" H 7070 7196 50  0000 L CNN
F 1 "R" H 7070 7105 50  0000 L CNN
F 2 "Inductor_SMD:L_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 6930 7150 50  0001 C CNN
F 3 "~" H 7000 7150 50  0001 C CNN
	1    7000 7150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 60DCC59E
P 7000 7700
F 0 "R7" H 7070 7746 50  0000 L CNN
F 1 "R" H 7070 7655 50  0000 L CNN
F 2 "Inductor_SMD:L_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 6930 7700 50  0001 C CNN
F 3 "~" H 7000 7700 50  0001 C CNN
	1    7000 7700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C13
U 1 1 60DCE5F3
P 3800 7100
F 0 "C13" H 3915 7146 50  0000 L CNN
F 1 "C" H 3915 7055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3838 6950 50  0001 C CNN
F 3 "~" H 3800 7100 50  0001 C CNN
	1    3800 7100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C12
U 1 1 60DCF867
P 3500 7100
F 0 "C12" H 3615 7146 50  0000 L CNN
F 1 "C" H 3615 7055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3538 6950 50  0001 C CNN
F 3 "~" H 3500 7100 50  0001 C CNN
	1    3500 7100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C11
U 1 1 60DD1B43
P 3250 7100
F 0 "C11" H 3365 7146 50  0000 L CNN
F 1 "C" H 3365 7055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3288 6950 50  0001 C CNN
F 3 "~" H 3250 7100 50  0001 C CNN
	1    3250 7100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C14
U 1 1 60DD3F8A
P 4150 7550
F 0 "C14" H 4265 7596 50  0000 L CNN
F 1 "C" H 4265 7505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4188 7400 50  0001 C CNN
F 3 "~" H 4150 7550 50  0001 C CNN
	1    4150 7550
	1    0    0    -1  
$EndComp
$Comp
L BANO3-rescue:Pin_0.5-BANOv03 XS7
U 1 1 60DD8E0E
P 8150 6750
F 0 "XS7" H 8178 6768 50  0000 L CNN
F 1 "Pin_0.5" H 8178 6677 50  0000 L CNN
F 2 "BANO3_01:pin_0.8" H 8200 6750 50  0001 C CNN
F 3 "" H 8200 6750 50  0001 C CNN
	1    8150 6750
	1    0    0    -1  
$EndComp
$Comp
L BANO3-rescue:Pin_0.5-BANOv03 XS6
U 1 1 60DDAEA9
P 2500 7350
F 0 "XS6" H 2528 7368 50  0000 L CNN
F 1 "Pin_0.5" H 2528 7277 50  0000 L CNN
F 2 "BANO3_01:pin_0.8" H 2550 7350 50  0001 C CNN
F 3 "" H 2550 7350 50  0001 C CNN
	1    2500 7350
	-1   0    0    1   
$EndComp
$Comp
L BANO3-rescue:Pin_0.5-BANOv03 XS5
U 1 1 60DDD2FC
P 2500 6850
F 0 "XS5" H 2528 6868 50  0000 L CNN
F 1 "Pin_0.5" H 2528 6777 50  0000 L CNN
F 2 "BANO3_01:pin_0.8" H 2550 6850 50  0001 C CNN
F 3 "" H 2550 6850 50  0001 C CNN
	1    2500 6850
	-1   0    0    1   
$EndComp
Wire Wire Line
	5750 7000 6250 7000
Wire Wire Line
	6150 6800 6250 6800
Connection ~ 6250 6800
Wire Wire Line
	6250 6800 6350 6800
Wire Wire Line
	6650 6800 6750 6800
Wire Wire Line
	7000 6800 7000 7000
Wire Wire Line
	6750 7000 6750 6800
Connection ~ 6750 6800
Wire Wire Line
	6750 6800 7000 6800
Wire Wire Line
	6750 7300 6750 7400
Wire Wire Line
	6750 7400 7000 7400
Wire Wire Line
	7000 7400 7000 7300
Wire Wire Line
	7000 7550 7000 7400
Connection ~ 7000 7400
Wire Wire Line
	6750 7400 5750 7400
Connection ~ 6750 7400
Wire Wire Line
	7000 8100 7000 7850
Wire Wire Line
	7000 6800 7350 6800
Wire Wire Line
	7350 6800 7350 6900
Connection ~ 7000 6800
Wire Wire Line
	7350 6800 7700 6800
Wire Wire Line
	7700 6800 7700 6900
Connection ~ 7350 6800
Wire Wire Line
	7700 7350 7700 7200
Wire Wire Line
	7350 7350 7350 7200
$Comp
L power:GND #PWR018
U 1 1 60E23F0F
P 4150 7850
F 0 "#PWR018" H 4150 7600 50  0001 C CNN
F 1 "GND" H 4155 7677 50  0000 C CNN
F 2 "" H 4150 7850 50  0001 C CNN
F 3 "" H 4150 7850 50  0001 C CNN
	1    4150 7850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 60E26E0E
P 3800 7350
F 0 "#PWR017" H 3800 7100 50  0001 C CNN
F 1 "GND" H 3805 7177 50  0000 C CNN
F 2 "" H 3800 7350 50  0001 C CNN
F 3 "" H 3800 7350 50  0001 C CNN
	1    3800 7350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR016
U 1 1 60E29C65
P 3500 7350
F 0 "#PWR016" H 3500 7100 50  0001 C CNN
F 1 "GND" H 3505 7177 50  0000 C CNN
F 2 "" H 3500 7350 50  0001 C CNN
F 3 "" H 3500 7350 50  0001 C CNN
	1    3500 7350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR015
U 1 1 60E2CBE7
P 3250 7350
F 0 "#PWR015" H 3250 7100 50  0001 C CNN
F 1 "GND" H 3255 7177 50  0000 C CNN
F 2 "" H 3250 7350 50  0001 C CNN
F 3 "" H 3250 7350 50  0001 C CNN
	1    3250 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 7250 3250 7350
Wire Wire Line
	3500 7250 3500 7350
Wire Wire Line
	3800 7250 3800 7350
Wire Wire Line
	2600 6800 3250 6800
Wire Wire Line
	4450 6900 4250 6900
Wire Wire Line
	4250 6900 4250 6800
Connection ~ 4250 6800
Wire Wire Line
	4250 6800 4450 6800
Wire Wire Line
	3800 6950 3800 6800
Connection ~ 3800 6800
Wire Wire Line
	3800 6800 4250 6800
Wire Wire Line
	3500 6950 3500 6800
Connection ~ 3500 6800
Wire Wire Line
	3500 6800 3800 6800
Wire Wire Line
	3250 6950 3250 6800
Connection ~ 3250 6800
Wire Wire Line
	3250 6800 3500 6800
$Comp
L power:GND #PWR014
U 1 1 60E53474
P 2750 7500
F 0 "#PWR014" H 2750 7250 50  0001 C CNN
F 1 "GND" H 2755 7327 50  0000 C CNN
F 2 "" H 2750 7500 50  0001 C CNN
F 3 "" H 2750 7500 50  0001 C CNN
	1    2750 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 7300 2750 7300
Wire Wire Line
	2750 7300 2750 7500
Wire Wire Line
	4450 7100 4250 7100
Wire Wire Line
	4250 7100 4250 6900
Connection ~ 4250 6900
Wire Wire Line
	4450 7300 4150 7300
Wire Wire Line
	4150 7300 4150 7400
Wire Wire Line
	4150 7700 4150 7850
Wire Wire Line
	5750 7600 5850 7600
Wire Wire Line
	5850 7600 5850 7700
Wire Wire Line
	5750 7700 5850 7700
Connection ~ 5850 7700
Wire Wire Line
	5850 7700 5850 7800
Wire Wire Line
	5750 7800 5850 7800
Connection ~ 5850 7800
Wire Wire Line
	5850 7800 5850 7900
Wire Wire Line
	5750 7900 5850 7900
Connection ~ 5850 7900
Wire Wire Line
	5850 7900 5850 8150
Wire Wire Line
	8050 6800 7700 6800
Connection ~ 7700 6800
$Comp
L BANO3-rescue:Pin_0.5-BANOv03 XS8
U 1 1 60E7C3BE
P 9900 6250
F 0 "XS8" H 9928 6268 50  0000 L CNN
F 1 "Pin_0.5" H 9928 6177 50  0000 L CNN
F 2 "BANO3_01:Plate_1" H 9950 6250 50  0001 C CNN
F 3 "" H 9950 6250 50  0001 C CNN
	1    9900 6250
	-1   0    0    1   
$EndComp
$Comp
L BANO3-rescue:Pin_0.5-BANOv03 XS9
U 1 1 60E812AB
P 9900 6450
F 0 "XS9" H 9928 6468 50  0000 L CNN
F 1 "Pin_0.5" H 9928 6377 50  0000 L CNN
F 2 "BANO3_01:Plate_1" H 9950 6450 50  0001 C CNN
F 3 "" H 9950 6450 50  0001 C CNN
	1    9900 6450
	-1   0    0    1   
$EndComp
$Comp
L BANO3-rescue:Pin_0.5-BANOv03 XS10
U 1 1 60E862EF
P 9900 6650
F 0 "XS10" H 9928 6668 50  0000 L CNN
F 1 "Pin_0.5" H 9928 6577 50  0000 L CNN
F 2 "BANO3_01:Plate_1" H 9950 6650 50  0001 C CNN
F 3 "" H 9950 6650 50  0001 C CNN
	1    9900 6650
	-1   0    0    1   
$EndComp
$Comp
L BANO3-rescue:Pin_0.5-BANOv03 XS11
U 1 1 60E8B3B9
P 9900 7150
F 0 "XS11" H 9928 7168 50  0000 L CNN
F 1 "Pin_0.5" H 9928 7077 50  0000 L CNN
F 2 "BANO3_01:pin_0.8" H 9950 7150 50  0001 C CNN
F 3 "" H 9950 7150 50  0001 C CNN
	1    9900 7150
	-1   0    0    1   
$EndComp
$Comp
L BANO3-rescue:Pin_0.5-BANOv03 XS12
U 1 1 60E90401
P 9900 7350
F 0 "XS12" H 9928 7368 50  0000 L CNN
F 1 "Pin_0.5" H 9928 7277 50  0000 L CNN
F 2 "BANO3_01:pin_0.8" H 9950 7350 50  0001 C CNN
F 3 "" H 9950 7350 50  0001 C CNN
	1    9900 7350
	-1   0    0    1   
$EndComp
$Comp
L BANO3-rescue:Pin_0.5-BANOv03 XS15
U 1 1 60EAA95D
P 10450 6550
F 0 "XS15" H 10478 6568 50  0000 L CNN
F 1 "Pin_0.5" H 10478 6477 50  0000 L CNN
F 2 "BANO3_01:pin_0.8" H 10500 6550 50  0001 C CNN
F 3 "" H 10500 6550 50  0001 C CNN
	1    10450 6550
	1    0    0    -1  
$EndComp
$Comp
L BANO3-rescue:Pin_0.5-BANOv03 XS14
U 1 1 60EAA963
P 10450 6350
F 0 "XS14" H 10478 6368 50  0000 L CNN
F 1 "Pin_0.5" H 10478 6277 50  0000 L CNN
F 2 "BANO3_01:pin_0.8" H 10500 6350 50  0001 C CNN
F 3 "" H 10500 6350 50  0001 C CNN
	1    10450 6350
	1    0    0    -1  
$EndComp
$Comp
L BANO3-rescue:Pin_0.5-BANOv03 XS13
U 1 1 60EAA969
P 10450 6150
F 0 "XS13" H 10478 6168 50  0000 L CNN
F 1 "Pin_0.5" H 10478 6077 50  0000 L CNN
F 2 "BANO3_01:pin_0.8" H 10500 6150 50  0001 C CNN
F 3 "" H 10500 6150 50  0001 C CNN
	1    10450 6150
	1    0    0    -1  
$EndComp
$Comp
L BANO3-rescue:Pin_0.5-BANOv03 XS17
U 1 1 60EAA96F
P 10450 7250
F 0 "XS17" H 10478 7268 50  0000 L CNN
F 1 "Pin_0.5" H 10478 7177 50  0000 L CNN
F 2 "BANO3_01:pin_0.8" H 10500 7250 50  0001 C CNN
F 3 "" H 10500 7250 50  0001 C CNN
	1    10450 7250
	1    0    0    -1  
$EndComp
$Comp
L BANO3-rescue:Pin_0.5-BANOv03 XS16
U 1 1 60EAA975
P 10450 7050
F 0 "XS16" H 10478 7068 50  0000 L CNN
F 1 "Pin_0.5" H 10478 6977 50  0000 L CNN
F 2 "BANO3_01:pin_0.8" H 10500 7050 50  0001 C CNN
F 3 "" H 10500 7050 50  0001 C CNN
	1    10450 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 6200 10350 6200
Wire Wire Line
	10000 6400 10350 6400
Wire Wire Line
	10000 6600 10350 6600
Wire Wire Line
	10000 7100 10350 7100
Wire Wire Line
	10000 7300 10350 7300
$Comp
L BANO3-rescue:Pin_0.5-BANOv03 XS18
U 1 1 60ED96B9
P 9900 7850
F 0 "XS18" H 9928 7868 50  0000 L CNN
F 1 "Pin_0.5" H 9928 7777 50  0000 L CNN
F 2 "BANO3_01:pin_2.2" H 9950 7850 50  0001 C CNN
F 3 "" H 9950 7850 50  0001 C CNN
	1    9900 7850
	-1   0    0    1   
$EndComp
$Comp
L BANO3-rescue:Pin_0.5-BANOv03 XS19
U 1 1 60ED96BF
P 9900 8050
F 0 "XS19" H 9928 8068 50  0000 L CNN
F 1 "Pin_0.5" H 9928 7977 50  0000 L CNN
F 2 "BANO3_01:pin_2.2" H 9950 8050 50  0001 C CNN
F 3 "" H 9950 8050 50  0001 C CNN
	1    9900 8050
	-1   0    0    1   
$EndComp
$Comp
L BANO3-rescue:Pin_0.5-BANOv03 XS21
U 1 1 60ED96C5
P 10450 7950
F 0 "XS21" H 10478 7968 50  0000 L CNN
F 1 "Pin_0.5" H 10478 7877 50  0000 L CNN
F 2 "BANO3_01:pin_2.2" H 10500 7950 50  0001 C CNN
F 3 "" H 10500 7950 50  0001 C CNN
	1    10450 7950
	1    0    0    -1  
$EndComp
$Comp
L BANO3-rescue:Pin_0.5-BANOv03 XS20
U 1 1 60ED96CB
P 10450 7750
F 0 "XS20" H 10478 7768 50  0000 L CNN
F 1 "Pin_0.5" H 10478 7677 50  0000 L CNN
F 2 "BANO3_01:pin_2.2" H 10500 7750 50  0001 C CNN
F 3 "" H 10500 7750 50  0001 C CNN
	1    10450 7750
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 7800 10350 7800
Wire Wire Line
	10000 8000 10350 8000
Wire Wire Line
	7900 4400 8550 4400
$Comp
L Device:C C19
U 1 1 60F0280E
P 10300 4650
F 0 "C19" H 10415 4696 50  0000 L CNN
F 1 "22uF" H 10415 4605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 10338 4500 50  0001 C CNN
F 3 "~" H 10300 4650 50  0001 C CNN
	1    10300 4650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR023
U 1 1 60F02814
P 10300 4900
F 0 "#PWR023" H 10300 4650 50  0001 C CNN
F 1 "GND" H 10305 4727 50  0000 C CNN
F 2 "" H 10300 4900 50  0001 C CNN
F 3 "" H 10300 4900 50  0001 C CNN
	1    10300 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 4800 10300 4900
Wire Wire Line
	10300 4500 10300 4400
Connection ~ 10300 4400
Wire Wire Line
	10300 4400 10650 4400
$Comp
L Device:C C20
U 1 1 60F192DB
P 6900 4850
F 0 "C20" H 7015 4896 50  0000 L CNN
F 1 "4.7uF" H 7015 4805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6938 4700 50  0001 C CNN
F 3 "~" H 6900 4850 50  0001 C CNN
	1    6900 4850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR024
U 1 1 60F23BD8
P 6900 5100
F 0 "#PWR024" H 6900 4850 50  0001 C CNN
F 1 "GND" H 6905 4927 50  0000 C CNN
F 2 "" H 6900 5100 50  0001 C CNN
F 3 "" H 6900 5100 50  0001 C CNN
	1    6900 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 5100 6900 5000
Wire Wire Line
	6900 4700 6900 4600
Connection ~ 6900 4600
Wire Wire Line
	6900 4600 7200 4600
Wire Wire Line
	3550 2800 4750 2800
Wire Wire Line
	3250 3350 4050 3350
Wire Wire Line
	4050 3350 4050 4600
$EndSCHEMATC
