import fileinput
import re

def match_patterns(line):
	pattern = re.compile("^(G[0-9]+) X([-+]?\d*\.\d+|\d+) Y([-+]?\d*\.\d+|\d+) Z([-+]?\d*\.\d+|\d+) F([-+]?\d*\.\d+|\d+) A([-+]?\d*\.\d+|\d+).*$")
	return pattern.match(line)
#file_postfix = ".gcode"
#usr_input = input("Please specify the name of the file without the postfix: ")
#gcode_file_name = usr_input + file_postfix

for line in fileinput.FileInput("/home/ed/Desktop/3D_Printing_Defect_Detection/Gcode_Insert/left_half_test_maker.gcode", inplace=1):
	if match_patterns(line):
		line = line.replace(line, line + " gotta")
	print(line,)





