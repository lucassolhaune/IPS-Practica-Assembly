.data
		num0:			.word	1
		num1:			.word	1
		promptMessage:	.asciiz	"Ingrese un numero: "
		selectedNum:	.word	0
		resMessage1:	.asciiz	"El numero "
		resMessage2:	.ascii	" en la sucesion de Fibonacci equivale a "
		.align 3
		res:		.space	4
.text
	.globl main
		main:
			#Pide numero para calcular su valor en Fibonacci
			li $v0, 4
			la $a0, promptMessage
			syscall
			
			li $v0, 5
			syscall
			
			sw $v0, selectedNum			#Guarda el numero ingresado por el usuario en la etiqueta selectedNum
			lw $t3, selectedNum			#Carga el numero ingresado por el usuario en el registro $t3
		
			lw $t0, num0				#Numero 0
			lw $t1, num1				#Numero 1
			li $t2, 1					#Contador
			while:
				beq $t2, $t3, endWhile	#While $t2 != $t3
				add $t4, $t0, $t1		#Suma $t0 y $t1 y guarda el resultado en $t4
				add $t0, $t1, $zero		#Pasa contenido del registro $t1 a $t0
				add $t1, $t4, $zero		#Pasa contenido del registro $t4 a $t1
				addi $t2, $t2, 1		#Suma 1 al contador
				j while
			endWhile:
			sw $t4, res					#Guarda el resultado en res
			
			#Muestra resultado
			li $v0, 4
			la $a0, resMessage1
			syscall
			
			li $v0, 1
			lw $a0, selectedNum
			syscall
			
			li $v0, 4
			la $a0, resMessage2
			syscall
			
			li $v0, 1
			lw $a0, res
			syscall
			
		#Exit del programa
		endMain:
			li $v0, 10
			syscall	
			
		
