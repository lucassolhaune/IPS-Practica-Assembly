.data
	palabra: .word 0x10203040
.text #zona de instrucciones
main: la $s0,palabra($0)