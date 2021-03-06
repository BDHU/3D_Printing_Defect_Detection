import fileinput

# might need change later, adding read functionality
thickness = 0.3
layer_num = 0
layer_height = 0
home = "G28 X Y ; home X and Y\n"
left = "G1 X25 F1500; move X and Y to the left\n"
down = "G1 Z"
percent = "M73 P"
wait = "G4 P500; Wait for given time\n"

# prepation gcode
prep_gcode = """M136 (enable build progress)
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
G130 X127 Y127 A127 B127 (Set Stepper motor Vref to defaults)\n\n"""

# read the number, create a for loop
with open("layer_number.txt", "r") as f:
	layer_num = int(f.readline())
	f.close()

with open("background.gcode", "w+") as f:
	f.write(prep_gcode)
	for i in range(0, layer_num):
		layer_height = layer_height + thickness
		f.write("; Layer: " + str(i) + "\n")
		f.write(down + str(layer_height) + " F1500" + '\n')
		f.write(home)
		f.write(wait)
		f.write(left)
		update_percent = percent + str(i) + "\n"
		f.write(update_percent)
	f.close()
		
		
	


