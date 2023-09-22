.data
		promptMessage:		.asciiz	"Ingrese un numero: "
		selectedNum:		.word	0
		resMessage1:		.asciiz	"El Fibonacci de "
		resMessage2:		.ascii	" es "
		res:				.word	0  
.text
	.globl main
		main:
			#Pide numero para calcular su valor en Fibonacci
			li $v0, 4
			la $a0, promptMessage
			syscall
			
			li $v0, 5
			syscall
			sw $v0, selectedNum		#Guarda el numero ingresado por el usuario en la etiqueta selectedNum
			li $v0, 0
			lw $a0, selectedNum		#Carga el numero ingresado por el usuario en el registro $a0
			jal fibonacci			#Llama a la funcion Fibonacci
			sw $v0, res				#Guarda el resultado en res
			
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
		
	.globl fibonacci
		fibonacci:
			beqz $a0, cero	#if n=0 return 0
			beq $a0, 1, uno	#if n=1 return 1

			#Fibonacci(n-1)
			sub $sp, $sp, 4	#Guarda la direccion del return en el stack
			sw $ra, 0($sp)

			sub $a0,$a0,1	#n-1
			jal fibonacci	#Fibonacci(n-1)
			add $a0,$a0,1

			lw $ra,0($sp)	#Restaura el stack
			add $sp,$sp,4

			sub $sp,$sp,4	#Ingresa el valor devuelto al stack
			sw $v0,0($sp)
			
			#Fibonacci(n-2)
			sub $sp,$sp,4	#Guarda la direccion del return en el stack
			sw $ra,0($sp)

			sub $a0,$a0,2	#n-2
			jal fibonacci	#Fibonacci(n-2)
			add $a0,$a0,2

			lw $ra,0($sp)	#Restaura el stack
			add $sp,$sp,4
			#---------------
			lw $s7,0($sp)	#Saca el primer valor de la pila
			add $sp,$sp,4

			add $v0,$v0,$s7	#Fibonacci(n - 2) + Fibonacci(n-1)
			jr $ra			#Pasa a la siguiente posicionn de la pila

		#Si es 0 devuelve 0
		cero:
			li $v0,0
			jr $ra
		#Si es 1 devuelve 1
		uno:
			li $v0,1
			jr $ra