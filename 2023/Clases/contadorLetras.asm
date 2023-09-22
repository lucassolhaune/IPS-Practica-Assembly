.data
	promptMessage: .asciiz "Ingrese una palabra (max 12): "
	inputString: .space 12
	resultMessage: .asciiz "Cantidad de letras del string: "
.text
	main:
		#Pide string por teclado
		la $a0, promptMessage
		li $v0, 4
		syscall
		
		#Ingresa el input
		la $a0, inputString
		li $a1, 12
		li $v0, 8
		syscall
		
		#Algoritmo contador de letras
		li $t0, 0		#Contador
		li $t3, 10		#Valor ascii new line
		la $t1, inputString
		while:
			lb $t2,($t1)
			beq $t2, $t3, endWhile	#Evalua si encuentra un \n. En ese caso sale del while.
			addi $t1, $t1, 1	#Siguiente byte
			addi $t0, $t0, 1	#Suma 1 al contador
			j while
		endWhile:
		
		#Muestra mensaje de resultado
		la $a0, resultMessage
		li $v0, 4
		syscall
		
		#Muestra el numero del resultado
		la $a0,($t0)
		li $v0, 1
		syscall
		
		#Exit
		li $v0, 10
		syscall