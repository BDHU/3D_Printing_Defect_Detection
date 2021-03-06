import re
import fileinput
import os
import sys

# TODO remove the first inserted instruction

# check to see of the line matches pattern G# X# Y# Z# F# A#
# ignore everything after ; if the line has it
def get_current_pwd():
	return os.getcwd()

# check if the F value matches the right one when the new layer starts


def get_all_params(line, pos):
	all_params = re.findall(r"[-+]?\d*\.\d+|\d+", line)
	return float(all_params[pos])

def match_patterns(line):
	pattern = re.compile("^(G[0-9]+) X([-+]?\d*\.\d+|\d+) Y([-+]?\d*\.\d+|\d+) Z([-+]?\d*\.\d+|\d+) F([-+]?\d*\.\d+|\d+).*$")
	return pattern.match(line)

def get_Z_val(line):
	return get_all_params(line, 3)

def has_Z_val(line):
	return 'Z' in line

def get_init_Z(line):
	if has_Z_val(line):
		if match_patterns(line):
			return float(get_Z_val(line))
	return -1

def get_F(line):
	return get_all_params(line, 4)

# this is assuming that the line contain comments or otherwise we are screwed
def is_done_with_print(line):
	return "End of print" in line


# the assumption can be made here that the starting value for Z is always 0.0 for
# object witout support struct or raft, so that the if statement can be avoided
# in the for loop
file_postfix = ".gcode"
usr_input = input("Please specify the name of the file without the postfix: ")
gcode_file_name = usr_input + file_postfix
Z_val = -100
original_Z = 0.0
is_first_time_match = True
layers_to_insert = 1
layers_till_insert = 0
instructions_to_insert = "G28 X Y; Home both X and Y\nG4 P500; Wait for given time\n"
full_file_path = get_current_pwd() + '/' + gcode_file_name
F_threshold = 1380
# this number will exported to a txt file for later use
num_layers = 0

for line in fileinput.FileInput(full_file_path, inplace=1):
	if match_patterns(line):
		Z_val = get_Z_val(line)
		dif = Z_val - original_Z
		if dif != 0 and get_F(line) == F_threshold:
			# print("dif: ", dif, i, file=sys.stderr)
			original_Z = Z_val
			layers_till_insert = layers_till_insert + 1
			if layers_till_insert == layers_to_insert:
				layers_till_insert = 0
				line = line.replace(line, instructions_to_insert+line)
				num_layers = num_layers + 1
	print(line, end='')

file = open("layer_number.txt","w")
file.write(str(num_layers))
file.close()
