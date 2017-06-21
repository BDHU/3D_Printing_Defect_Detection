import re

def match_patterns(line):
	pattern = re.compile("^(G[0-9]+) X([-+]?\d*\.\d+|\d+) Y([-+]?\d*\.\d+|\d+) Z([-+]?\d*\.\d+|\d+) F([-+]?\d*\.\d+|\d+) A([-+]?\d*\.\d+|\d+).*$")
	return pattern.match(line)

file_postfix = ".gcode"
usr_input = input("Please specify the name of the file without the postfix: ")
gcode_file_name = usr_input + file_postfix

with open(gcode_file_name, "r+") as f:
	contents = f.readlines()
	for i, line in enumerate(contents):
		if match_patterns(line):
			print(line)
			print("fuck ", i)