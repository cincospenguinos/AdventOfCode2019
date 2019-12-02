program = [
	1,12,2,3,
	1,1,2,3,
	1,3,4,3,
	1,5,0,3,
	2,13,1,19,
	1,19,6,23,
	1,23,6,27,
	1,13,27,31,
	2,13,31,35,
	1,5,35,39,
	2,39,13,43,
	1,10,43,47,
	2,13,47,51,
	1,6,51,55,
	2,55,13,59,
	1,59,10,63,
	1,63,10,67,
	2,10,67,71,
	1,6,71,75,
	1,10,75,79,
	1,79,9,83,
	2,83,6,87,
	2,87,9,91,
	1,5,91,95,
	1,6,95,99,
	1,99,9,103,
	2,10,103,107,
	1,107,6,111,
	2,9,111,115,
	1,5,115,119,
	1,10,119,123,
	1,2,123,127,
	1,127,6,0,
	99,
	2,14,0,0]

program_counter = 0

while program_counter < program.size - 1 do
	opcode = program[program_counter]
	arg0 = program[program[program_counter + 1]]
	arg1 = program[program[program_counter + 2]]
	location = program[program_counter + 3]

	if opcode == 1
		# puts "sum #{arg0} and #{arg1} to #{location}"
		program[location] = arg0 + arg1
	elsif opcode == 2
		# puts "product #{arg0} and #{arg1} to #{location}"
		program[location] = arg0 * arg1
	elsif opcode == 99
		# puts "break at pc #{program_counter}"
		puts program[0]
		exit 0
	else
		raise RuntimeError, "Invalid opcode #{opcode}"
	end

	program_counter += 4

	# puts program.inspect
end

# 133 is too low
# 1690717 is too low