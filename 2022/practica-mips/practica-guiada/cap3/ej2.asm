.data 0x10000000
	vectorV: .word 10, 20, 25, 500, 3
.text
main: lw $s0, vectorV($0)
	lw $s1, vectorV + 4($0)
	lw $s2, vectorV + 8($0)
	lw $s3, vectorV + 12($0)
	lw $s4, vectorV + 16($0)
	la $1, 0x10010000
	sw $s0,($at)
	sw $s1, 4($at)
	sw $s2, 8($at)
	sw $s3, 12($at)
	sw $s4, 16($at)