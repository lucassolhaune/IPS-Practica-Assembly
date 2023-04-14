.data
	promptMessage: 	.asciiz "Ingrese un numero: "
	number:			.word	0
	resultMessage:	.asciiz	"El factorial de "
	resultMessage2:	.asciiz	" es "
	result:			.word	0
.text
	.globl main
		main:
			#Toma numero por teclado
			li $v0, 4
			la $a0, promptMessage
			syscall
			
			li $v0, 5
			syscall
			
			sw $v0, number
			
			#Calcula factorial
			lw $a0, number
			jal factorial
			sw $v0, result
			
			#Muestra el resultado
			li $v0, 4
			la $a0, resultMessage
			syscall

			li $v0, 1
			lw $a0, number
			syscall
		
			li $v0, 4
			la $a0, resultMessage2
			syscall

			li $v0, 1
			lw $a0, result
			syscall
		endMain:		
			#Fin del programa
			li $v0, 10
			syscall
			
	.globl factorial
		factorial:
			addi $sp, $sp, -8		#Reserva espacio en el stack
			sw $a0, 4($sp)			#Almacena el argumento en el stack
			sw $ra, 0($sp)			#Almacena $ra en el stack
			sle $t0, $a0, 1			#Evalua si el argumento es <= 1. Si es afirmativo, se almacena 1 en $t0. Caso contrario, 0
			if:
				beqz $t0, else		#Si $t0 == 0 (es decir, $a0 > 1) salta a else
				addi $v0, $0, 1		#Retorna 1
				addi $sp, $sp, 8	#Restaura $sp
				jr $ra				#Return
			else:
				addi $a0, $a0, -1	#n = n - 1
				jal factorial		#Llama a factorial con n - 1
				lw $ra, 0($sp)		#Desapila $ra
				lw $a0, 4($sp)		#Desapila $a0
				addi $sp, $sp, 8	#Restaura $sp
				mult $v0, $a0		#n * factorial (n - 1)
				mflo $v0
				jr $ra				#Return
