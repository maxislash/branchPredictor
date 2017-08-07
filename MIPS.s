# $s0 == c, $t0 == i, $t1 == j, $t2 == 1000, $t3 == 4

move $s0, $zero		# initialize c to 0
li $t0, 0			# initialize i to 0
li $t2, 1000		# store the end value of i in a register for comparison

B1: beq $t0, $t2, end	# loop test
addi $s0, $s0, 1	# c++
addi $t0, $t0, 1	# i++
b B1

end:

# $s0 == c, $t0 == i, $t1 == j, $t2 == 1000, $t3 == 4

ADD $s0, $zero, $zero		# initialize c to 0
ADD $t0, $zero, $zero		# initialize i to 0
ADD $t2, $zero, $zero		# store the end value of i in a register for comparison
ADDI $t2, $t2, 1000
ADD $t1, $zero, $zero		# initialize j to 0
ADD $t3, $zero, $zero		# store the end value of j in a register for comparison
ADDI $t3, $t3, 4

B1: BEQ $t0, $t2, end	# loop 1 test
ADDI $t0, $t0, 1	# i++
ADD $t1, $zero, $zero	# reinitialize j at 0

B2: BEQ $t1, $t3, B1	# loop 2 test
ADDI $s0, $s0, 1	# c++
ADDI $t1, $t1, 1	# j++
J B2

end: