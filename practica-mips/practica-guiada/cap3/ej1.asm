.data 0x10000000
	vectorV: .word 10, 20, 25, 500, 3
.text
main: lw $s0, vectorV($0)
	lw $s1, vectorV + 4($0)
	lw $s2, vectorV + 8($0)
	lw $s3, vectorV + 12($0)
	lw $s4, vectorV + 16($0)