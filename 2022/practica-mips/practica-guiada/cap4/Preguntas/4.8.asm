.data
		numero: .word 0x3ff41	# 00111111111101000001
.space 4
.text
		main: lw $t0,numero($0)						#	00111111111101000001	= 0x3ff41
		andi $t1,$t0,0xfffe		# 0xffe en binario es 0 ...01111111111111110	= 0x0fffe
		sw $t1,numero+4($0)							#	00001111111101000000	= 0x0ff40
