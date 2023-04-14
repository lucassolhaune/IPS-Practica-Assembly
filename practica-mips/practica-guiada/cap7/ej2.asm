.data
	promptMessage1:	.asciiz	"Ingrese su nombre: "
	.align 2
		name:			.space	10
	
	promptMessage2:	.asciiz	"Ingrese su apellido: "
	.align 2
		surname:		.space	15
	
	promptMessage3:	.asciiz	"Ingrese su DNI: "
	dni:			.word	0
	message1:		.asciiz	"\nSus datos:\n"
	message2:		.asciiz	"\tNombre: "
	message3:		.asciiz	"\tApellido: "
	message4:		.asciiz	"\tDNI:	"
	
.text
	.globl main
		main:
			li $v0, 4
			la $a0, promptMessage1
			syscall
			
			li $v0, 8
			la $a0, name
			li $a1, 10
			syscall
			
			li $v0, 4
			la $a0, promptMessage2
			syscall
			
			li $v0, 8
			la $a0, surname
			la $a1, 15
			syscall
			
			li $v0, 4
			la $a0, promptMessage3
			syscall
			
			li $v0, 5
			la $a0, dni
			syscall
			sw $v0, dni
			
			li $v0, 4
			la $a0, message1
			syscall
			
			li $v0, 4
			la $a0, message2
			syscall
			
			li $v0, 4
			la $a0, name
			syscall
			
			li $v0, 4
			la $a0, message3
			syscall
			
			li $v0, 4
			la $a0, surname
			syscall
			
			li $v0, 4
			la $a0, message4
			syscall
			
			li $v0, 1
			lw $a0, dni
			syscall
			
			li $v0, 10
			syscall