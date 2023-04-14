.data
	V: .word 2,-4,-6	#Vector de enteros
	res: .space 3		#Espacio para vector de booleanos de 3 elementos
.text
	lw $t0, V			#Carga V[1] en $t0
	lw $t1, V + 4		#Carga V[2] en $t1
	lw $t2, V + 8		#Carga V[3] en $t2
	sge $t3, $t0, 0		#Guarda en $t3 el resultado de comparar $t0 con 0
	sge $t4, $t1, 0		#Guarda en $t4 el resultado de comparar $t1 con 0
	sge $t5, $t2, 0		#Guarda en $t5 el resultado de comparar $t2 con 0
	sb $t3, res			#Almacena los resultados en memoria
	sb $t4, res + 1
	sb $t5, res + 2