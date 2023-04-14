.data # comienza zona de datos
	palabra1: .byte 0x10,0x20,0x30,0x40# hexadecimal
	palabra2: .word 0x10203040 # hexadecimal
.text
	li $v0, 1
	lb $a0, palabra1
	lw $a1, palabra2
	syscall
	