.data
		vector: .word -1,-4,-5,-2
		res:	.space 1
.text
main:	lw $t0, vector
		bgez $t0, end
		lw $t1, vector + 4
		bgez $t1, end
		lw $t2, vector + 8
		bgez $t2, end
		lw $t3, vector +12
		bgez $t3, end
		li $s0, 1
end:	sb $s0, res		