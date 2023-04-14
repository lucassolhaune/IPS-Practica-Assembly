.data 0x10010000
	matriz_A_fila: .word 1,2,3,4,5,6,7,8,9	#Matriz A almacenada por filas
.align 5
	matriz_A_columna: .space 36				#Espacio para almacenar la Matriz A por columnas
.text
	lw $t0, matriz_A_fila
	lw $t1, matriz_A_fila + 4
	lw $t2, matriz_A_fila + 8
	lw $t3, matriz_A_fila + 12
	lw $t4, matriz_A_fila + 16
	lw $t5, matriz_A_fila + 20
	lw $t6, matriz_A_fila + 24
	lw $t7, matriz_A_fila + 28
	lw $t8, matriz_A_fila + 32
	sw $t0, matriz_A_columna				#Almacena la matriz A por columnas
	sw $t3, matriz_A_columna + 4
	sw $t6, matriz_A_columna + 8
	sw $t1, matriz_A_columna + 12
	sw $t4, matriz_A_columna + 16
	sw $t7, matriz_A_columna + 20
	sw $t2, matriz_A_columna + 24
	sw $t5, matriz_A_columna + 28
	sw $t8, matriz_A_columna + 32