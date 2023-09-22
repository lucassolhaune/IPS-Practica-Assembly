.data
	palabra: .word 0x10203040
.text #zona de instrucciones
main: la $t0, palabra
	lw $s0, 4($t0)