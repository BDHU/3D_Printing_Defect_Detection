import re

# check to see of the line matches pattern G# X# Y# Z# F# A#
# ignore everything after ; if the line has it
# TODO check error
def match_patterns(line):
	pattern = re.compile("^(G[0-9]+) X([-+]?\d*\.\d+|\d+) Y([-+]?\d*\.\d+|\d+) Z([-+]?\d*\.\d+|\d+) F([-+]?\d*\.\d+|\d+) A([-+]?\d*\.\d+|\d+).*$")
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
instructions_to_insert = "\nM28\n"

# with file_object as f:
# 	contents = f.readlines()
with open(gcode_file_name, "r+") as f:
	contents = f.readlines()
	for i, line in enumerate(contents):
		# get the starting Z value
		if is_first_time_match:
			original_Z = get_init_Z(line)
			Z_val = original_Z
			if original_Z != -1:
				is_first_time_match = False
			continue
			# evaluate if the line contains a "Z" char
		# if has_Z_val(line):
		# 	# process to the next step to see if it matches the pattern
		if match_patterns(line):
			# if match the pattern, get the Z value
			Z_val = get_Z_val(line)
			dif = Z_val - original_Z
			if dif != 0:
				layers_till_insert = layers_till_insert+1
				if layers_till_insert == layers_to_insert:
					layers_till_insert = 0
					# write to specific location
					f.write(instructions_to_insert)
# fd.close()
f.close()
