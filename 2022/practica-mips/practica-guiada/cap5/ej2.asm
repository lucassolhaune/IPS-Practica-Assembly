.data
		vector: .word 2,-4,-6
		res:	.space 3
.text
main:	lw $t0, vector
		lw $t1, vector + 4
		lw $t2, vector + 8
		sge $s0, $t0, 0
		sb $s0, res
		sge $s1, $t1, 0
		sb $s1, res + 1
		sge $s2, $t2, 0
		sb $s2, res + 2