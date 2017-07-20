M136 (enable build progress)
M73 P0
G162 X Y F2000(home XY axes maximum)
G161 Z F900(home Z axis minimum)
G92 X0 Y0 Z-5 A0 B0 (set Z to -5)
G1 Z0.0 F900(move Z to '0')
G161 Z F100(home Z axis minimum)
M132 X Y Z A B (Recall stored home offsets for XYZAB axis)
G92 X152 Y75 Z0 A0 B0
G1 X-112 Y-73 Z150 F3300.0 (move to waiting position)
G130 X20 Y20 A20 B20 (Lower stepper Vrefs while heating)
; M109 S110 T0
M134 T0
M135 T0
; M104 S235 T0
M133 T0
G130 X127 Y127 A127 B127 (Set Stepper motor Vref to defaults)

; Layer: 0
G1 Z0.3 F1500
G28 X Y ; home X and Y
G4 P500; Wait for given time
G1 X25 F1500; move X and Y to the left
M73 P0
; Layer: 1
G1 Z0.6 F1500
G28 X Y ; home X and Y
G4 P500; Wait for given time
G1 X25 F1500; move X and Y to the left
M73 P1
; Layer: 2
G1 Z0.8999999999999999 F1500
G28 X Y ; home X and Y
G4 P500; Wait for given time
G1 X25 F1500; move X and Y to the left
M73 P2
; Layer: 3
G1 Z1.2 F1500
G28 X Y ; home X and Y
G4 P500; Wait for given time
G1 X25 F1500; move X and Y to the left
M73 P3
; Layer: 4
G1 Z1.5 F1500
G28 X Y ; home X and Y
G4 P500; Wait for given time
G1 X25 F1500; move X and Y to the left
M73 P4
; Layer: 5
G1 Z1.8 F1500
G28 X Y ; home X and Y
G4 P500; Wait for given time
G1 X25 F1500; move X and Y to the left
M73 P5
; Layer: 6
G1 Z2.1 F1500
G28 X Y ; home X and Y
G4 P500; Wait for given time
G1 X25 F1500; move X and Y to the left
M73 P6
; Layer: 7
G1 Z2.4 F1500
G28 X Y ; home X and Y
G4 P500; Wait for given time
G1 X25 F1500; move X and Y to the left
M73 P7
; Layer: 8
G1 Z2.6999999999999997 F1500
G28 X Y ; home X and Y
G4 P500; Wait for given time
G1 X25 F1500; move X and Y to the left
M73 P8
; Layer: 9
G1 Z2.9999999999999996 F1500
G28 X Y ; home X and Y
G4 P500; Wait for given time
G1 X25 F1500; move X and Y to the left
M73 P9
; Layer: 10
G1 Z3.2999999999999994 F1500
G28 X Y ; home X and Y
G4 P500; Wait for given time
G1 X25 F1500; move X and Y to the left
M73 P10
; Layer: 11
G1 Z3.599999999999999 F1500
G28 X Y ; home X and Y
G4 P500; Wait for given time
G1 X25 F1500; move X and Y to the left
M73 P11
; Layer: 12
G1 Z3.899999999999999 F1500
G28 X Y ; home X and Y
G4 P500; Wait for given time
G1 X25 F1500; move X and Y to the left
M73 P12
; Layer: 13
G1 Z4.199999999999999 F1500
G28 X Y ; home X and Y
G4 P500; Wait for given time
G1 X25 F1500; move X and Y to the left
M73 P13
; Layer: 14
G1 Z4.499999999999999 F1500
G28 X Y ; home X and Y
G4 P500; Wait for given time
G1 X25 F1500; move X and Y to the left
M73 P14
; Layer: 15
G1 Z4.799999999999999 F1500
G28 X Y ; home X and Y
G4 P500; Wait for given time
G1 X25 F1500; move X and Y to the left
M73 P15
; Layer: 16
G1 Z5.099999999999999 F1500
G28 X Y ; home X and Y
G4 P500; Wait for given time
G1 X25 F1500; move X and Y to the left
M73 P16
; Layer: 17
G1 Z5.399999999999999 F1500
G28 X Y ; home X and Y
G4 P500; Wait for given time
G1 X25 F1500; move X and Y to the left
M73 P17
; Layer: 18
G1 Z5.699999999999998 F1500
G28 X Y ; home X and Y
G4 P500; Wait for given time
G1 X25 F1500; move X and Y to the left
M73 P18
; Layer: 19
G1 Z5.999999999999998 F1500
G28 X Y ; home X and Y
G4 P500; Wait for given time
G1 X25 F1500; move X and Y to the left
M73 P19
; Layer: 20
G1 Z6.299999999999998 F1500
G28 X Y ; home X and Y
G4 P500; Wait for given time
G1 X25 F1500; move X and Y to the left
M73 P20
; Layer: 21
G1 Z6.599999999999998 F1500
G28 X Y ; home X and Y
G4 P500; Wait for given time
G1 X25 F1500; move X and Y to the left
M73 P21
; Layer: 22
G1 Z6.899999999999998 F1500
G28 X Y ; home X and Y
G4 P500; Wait for given time
G1 X25 F1500; move X and Y to the left
M73 P22
; Layer: 23
G1 Z7.1999999999999975 F1500
G28 X Y ; home X and Y
G4 P500; Wait for given time
G1 X25 F1500; move X and Y to the left
M73 P23
; Layer: 24
G1 Z7.499999999999997 F1500
G28 X Y ; home X and Y
G4 P500; Wait for given time
G1 X25 F1500; move X and Y to the left
M73 P24
; Layer: 25
G1 Z7.799999999999997 F1500
G28 X Y ; home X and Y
G4 P500; Wait for given time
G1 X25 F1500; move X and Y to the left
M73 P25
; Layer: 26
G1 Z8.099999999999998 F1500
G28 X Y ; home X and Y
G4 P500; Wait for given time
G1 X25 F1500; move X and Y to the left
M73 P26
; Layer: 27
G1 Z8.399999999999999 F1500
G28 X Y ; home X and Y
G4 P500; Wait for given time
G1 X25 F1500; move X and Y to the left
M73 P27
; Layer: 28
G1 Z8.7 F1500
G28 X Y ; home X and Y
G4 P500; Wait for given time
G1 X25 F1500; move X and Y to the left
M73 P28
; Layer: 29
G1 Z9.0 F1500
G28 X Y ; home X and Y
G4 P500; Wait for given time
G1 X25 F1500; move X and Y to the left
M73 P29
; Layer: 30
G1 Z9.3 F1500
G28 X Y ; home X and Y
G4 P500; Wait for given time
G1 X25 F1500; move X and Y to the left
M73 P30
; Layer: 31
G1 Z9.600000000000001 F1500
G28 X Y ; home X and Y
G4 P500; Wait for given time
G1 X25 F1500; move X and Y to the left
M73 P31
; Layer: 32
G1 Z9.900000000000002 F1500
G28 X Y ; home X and Y
G4 P500; Wait for given time
G1 X25 F1500; move X and Y to the left
M73 P32
; Layer: 33
G1 Z10.200000000000003 F1500
G28 X Y ; home X and Y
G4 P500; Wait for given time
G1 X25 F1500; move X and Y to the left
M73 P33
; Layer: 34
G1 Z10.500000000000004 F1500
G28 X Y ; home X and Y
G4 P500; Wait for given time
G1 X25 F1500; move X and Y to the left
M73 P34
; Layer: 35
G1 Z10.800000000000004 F1500
G28 X Y ; home X and Y
G4 P500; Wait for given time
G1 X25 F1500; move X and Y to the left
M73 P35
; Layer: 36
G1 Z11.100000000000005 F1500
G28 X Y ; home X and Y
G4 P500; Wait for given time
G1 X25 F1500; move X and Y to the left
M73 P36
; Layer: 37
G1 Z11.400000000000006 F1500
G28 X Y ; home X and Y
G4 P500; Wait for given time
G1 X25 F1500; move X and Y to the left
M73 P37
; Layer: 38
G1 Z11.700000000000006 F1500
G28 X Y ; home X and Y
G4 P500; Wait for given time
G1 X25 F1500; move X and Y to the left
M73 P38
; Layer: 39
G1 Z12.000000000000007 F1500
G28 X Y ; home X and Y
G4 P500; Wait for given time
G1 X25 F1500; move X and Y to the left
M73 P39
; Layer: 40
G1 Z12.300000000000008 F1500
G28 X Y ; home X and Y
G4 P500; Wait for given time
G1 X25 F1500; move X and Y to the left
M73 P40
; Layer: 41
G1 Z12.600000000000009 F1500
G28 X Y ; home X and Y
G4 P500; Wait for given time
G1 X25 F1500; move X and Y to the left
M73 P41
; Layer: 42
G1 Z12.90000000000001 F1500
G28 X Y ; home X and Y
G4 P500; Wait for given time
G1 X25 F1500; move X and Y to the left
M73 P42
; Layer: 43
G1 Z13.20000000000001 F1500
G28 X Y ; home X and Y
G4 P500; Wait for given time
G1 X25 F1500; move X and Y to the left
M73 P43
; Layer: 44
G1 Z13.50000000000001 F1500
G28 X Y ; home X and Y
G4 P500; Wait for given time
G1 X25 F1500; move X and Y to the left
M73 P44
; Layer: 45
G1 Z13.800000000000011 F1500
G28 X Y ; home X and Y
G4 P500; Wait for given time
G1 X25 F1500; move X and Y to the left
M73 P45
; Layer: 46
G1 Z14.100000000000012 F1500
G28 X Y ; home X and Y
G4 P500; Wait for given time
G1 X25 F1500; move X and Y to the left
M73 P46
; Layer: 47
G1 Z14.400000000000013 F1500
G28 X Y ; home X and Y
G4 P500; Wait for given time
G1 X25 F1500; move X and Y to the left
M73 P47
; Layer: 48
G1 Z14.700000000000014 F1500
G28 X Y ; home X and Y
G4 P500; Wait for given time
G1 X25 F1500; move X and Y to the left
M73 P48
; Layer: 49
G1 Z15.000000000000014 F1500
G28 X Y ; home X and Y
G4 P500; Wait for given time
G1 X25 F1500; move X and Y to the left
M73 P49
; Layer: 50
G1 Z15.300000000000015 F1500
G28 X Y ; home X and Y
G4 P500; Wait for given time
G1 X25 F1500; move X and Y to the left
M73 P50
; Layer: 51
G1 Z15.600000000000016 F1500
G28 X Y ; home X and Y
G4 P500; Wait for given time
G1 X25 F1500; move X and Y to the left
M73 P51
; Layer: 52
G1 Z15.900000000000016 F1500
G28 X Y ; home X and Y
G4 P500; Wait for given time
G1 X25 F1500; move X and Y to the left
M73 P52
; Layer: 53
G1 Z16.200000000000017 F1500
G28 X Y ; home X and Y
G4 P500; Wait for given time
G1 X25 F1500; move X and Y to the left
M73 P53
; Layer: 54
G1 Z16.500000000000018 F1500
G28 X Y ; home X and Y
G4 P500; Wait for given time
G1 X25 F1500; move X and Y to the left
M73 P54
; Layer: 55
G1 Z16.80000000000002 F1500
G28 X Y ; home X and Y
G4 P500; Wait for given time
G1 X25 F1500; move X and Y to the left
M73 P55
; Layer: 56
G1 Z17.10000000000002 F1500
G28 X Y ; home X and Y
G4 P500; Wait for given time
G1 X25 F1500; move X and Y to the left
M73 P56
; Layer: 57
G1 Z17.40000000000002 F1500
G28 X Y ; home X and Y
G4 P500; Wait for given time
G1 X25 F1500; move X and Y to the left
M73 P57
; Layer: 58
G1 Z17.70000000000002 F1500
G28 X Y ; home X and Y
G4 P500; Wait for given time
G1 X25 F1500; move X and Y to the left
M73 P58
; Layer: 59
G1 Z18.00000000000002 F1500
G28 X Y ; home X and Y
G4 P500; Wait for given time
G1 X25 F1500; move X and Y to the left
M73 P59
; Layer: 60
G1 Z18.300000000000022 F1500
G28 X Y ; home X and Y
G4 P500; Wait for given time
G1 X25 F1500; move X and Y to the left
M73 P60
; Layer: 61
G1 Z18.600000000000023 F1500
G28 X Y ; home X and Y
G4 P500; Wait for given time
G1 X25 F1500; move X and Y to the left
M73 P61
; Layer: 62
G1 Z18.900000000000023 F1500
G28 X Y ; home X and Y
G4 P500; Wait for given time
G1 X25 F1500; move X and Y to the left
M73 P62
; Layer: 63
G1 Z19.200000000000024 F1500
G28 X Y ; home X and Y
G4 P500; Wait for given time
G1 X25 F1500; move X and Y to the left
M73 P63
; Layer: 64
G1 Z19.500000000000025 F1500
G28 X Y ; home X and Y
G4 P500; Wait for given time
G1 X25 F1500; move X and Y to the left
M73 P64
; Layer: 65
G1 Z19.800000000000026 F1500
G28 X Y ; home X and Y
G4 P500; Wait for given time
G1 X25 F1500; move X and Y to the left
M73 P65
; Layer: 66
G1 Z20.100000000000026 F1500
G28 X Y ; home X and Y
G4 P500; Wait for given time
G1 X25 F1500; move X and Y to the left
M73 P66
