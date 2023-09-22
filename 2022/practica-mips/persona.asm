.data
		nameMessage: 		.asciiz "Ingrese su nombre: "
		.align 2
		myName:				.space 20
		surnameMessage: 	.asciiz "Ingrese su apellido: "
		.align 2
		mySurname:			.space 20
		myCompleteName:		.ascii	"Usted se llama "
.text
	.globl main
		main:
			#Pide el nombre
			li $v0, 4
			la $a0, nameMessage
			syscall

			li $v0, 8
			la $a0, myName
			li $a1, 20
			syscall

			jal removeNewLine		

			#Pide apellido
			li $v0, 4
			la $a0, surnameMessage
			syscall
		
			li $v0, 8
			la $a0, mySurname
			li $a1, 20
			syscall
		
			jal removeNewLine
		
			#Muestra nombre completo
			li $v0, 4
			la $a0, myCompleteName
			syscall
		
			li $v0, 4
			la $a0, myName
			syscall
		
			li $v0, 4
			la $a0, mySurname
			syscall
		
			#Fin
			li $v0, 10
			syscall
		
removeNewLine:
		la $a2, ($a0)					#Direccion modificada
		while:
			lb $s0,($a2)				#Carga el byte de esa direccion
			beq $s0, '\n', endWhile		#Si encuentra un NewLine sale del while
			addi $a2, $a2, 1
			j while
		endWhile:
		li $t0, ' '
		sb $t0, ($a2)

		jr $ra
