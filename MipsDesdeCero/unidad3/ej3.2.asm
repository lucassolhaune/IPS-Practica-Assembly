.data	0x10000000
	vector: .word 10, 20, 30, 25, 500, 3
.text
	main:
		lw $s0, vector
		lw $s1, vector + 4
		lw $s2, vector + 8
		lw $s3, vector + 12
		lw $s4, vector + 16
		lw $s5, vector + 20
		
		la $a0, 0x10010000
		
		sw $s0, ($a0)
		sw $s1, ($a0) + 4
		sw $s2, ($a0) + 8
		sw $s3, ($a0) + 12
		sw $s4, ($a0) + 16
<		sw $s5, ($a0) + 20		