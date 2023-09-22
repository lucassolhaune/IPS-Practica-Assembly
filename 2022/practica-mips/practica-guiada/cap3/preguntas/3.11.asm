.data
	palabra: .word 0x10203040
.text #zona de instrucciones
main: lh $s0,palabra
