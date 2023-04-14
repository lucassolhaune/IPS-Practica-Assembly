.data
	palabra: .word 0x10203040
.text
main: lw $s0, palabra($0)
	lh $s1, palabra($0)
	lh $s2, palabra + 2
	sh $s2, ($1)
	sh $s1, 2($1)