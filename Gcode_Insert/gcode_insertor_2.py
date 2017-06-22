import re
import fileinput
import os

# check to see of the line matches pattern G# X# Y# Z# F# A#
# ignore everything after ; if the line has it
# TODO check error
def match_patterns(line):
	pattern = re.compile("^(G[0-9]+) X([-+]?\d*\.\d+|\d+) Y([-+]?\d*\.\d+|\d+) Z([-+]?\d*\.\d+|\d+) F([-+]?\d*\.\d+|\d+) A([-+]?\d*\.\d+|\d+);.*$")
	return pattern.match(line)

def get_Z_val(line):
	all_params = re.findall(r"[-+]?\d*\.\d+|\d+", line)
	return float(all_params[3])

def has_Z_val(line):
	return 'Z' in line

def get_init_Z(line):
	if has_Z_val(line):
		if match_patterns(line):
			return float(get_Z_val(line))
	return -1

file_postfix = ".gcode"
usr_input = input("Please specify the name of the file without the postfix: ")
gcode_file_name = usr_input + file_postfix
# file_object = open(gcode_file_name, "r+")
file_dst = open(usr_input + "_copy" + file_postfix, "w")
Z_val = -100
original_Z = 0
is_first_time_match = True
layers_to_insert = 3
layers_till_insert = 0
instructions_to_insert = "G28\n"


for line in fileinput.FileInput("/home/ed/Desktop/3D_Printing_Defect_Detection/Gcode_Insert/left_half_test_maker.gcode", inplace=1):
	if is_first_time_match:
		original_Z = get_init_Z(line)
		Z_val = original_Z
		if original_Z != -1:
			is_first_time_match = False
		print(line, end='')
		continue
	if match_patterns(line):
		Z_val = get_Z_val(line)
		dif = Z_val - original_Z
		if dif != 0:
			print('dif: ', dif)
			original_Z = Z_val
			layers_till_insert = layers_till_insert + 1
			if layers_till_insert == layers_to_insert:
				layers_till_insert = 0
				line = line.replace(line, instructions_to_insert+line)
	print(line, end='')

