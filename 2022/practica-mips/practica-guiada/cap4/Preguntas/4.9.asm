.data
		numero: .word 0x3ff4f	# 00111111111101001111
.space 4
.text
		main: lw $t0,numero($0)		#	00111111111101001111	= 0x3ff4f
		andi $t1,$t0,0x3ff4f		# 	00111111111101001111	= 0x3ff4f
		sw $t1,numero+4($0)			#	00111111111101001111	= 0x3ff4f