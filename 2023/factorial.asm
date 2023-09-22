.data
	factorialNum:	.space 4
	resultNum:	.space 4
	promptMessage:	.asciiz "Ingrese un numero: "
	resultMessage:	.asciiz "El resultado es: "
.text
.globl	main:
		#Pide numero por pantalla
		la $a0, promptMessage
		li $v0, 4
		syscall
		
		#Lee el numero
		li $v0, 5
		syscall
		sw $v0, factorialNum
		
		#Salta a la funcion factorial
		j factorial
		
	factorial:
		#Multiplica n*(n-1) hasta que n = 1
		while:
			lw $t0, $v0	#$t0 = n
			sub $t1, $t0, 1	#$t1 = n-1
			mult $t0, $t1
			move $t0, hi	#$t0 = n*(n-1)
			bge $t0