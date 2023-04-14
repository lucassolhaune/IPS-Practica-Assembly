.data 0x10000000
		vector: .word 10, 20
.text
main: 	lw $s0, vector
		lw $s1, vector + 4
		add $s2, $s1, $s0
		sw $s2, vector + 8