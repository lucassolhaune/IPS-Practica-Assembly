.data
	V: .byte 0,1,1,1,0	#Vector de booleanos
	res: .space 3		#Espacio de 3 bytes para el resultado
	
.text
	lb $t0, V			#Carga V[1] en $t0
	lb $t1, V + 1		#Carga V[2] en $t1
	lb $t2, V + 2		#Carga V[3] en $t2
	lb $t3, V + 3		#Carga V[4] en $t3
	lb $t4, V + 4		#Carga V[5] en $t4
	and $t5, $t0, $t4	# (V[1] and V[5]) 			-> $t5
	or $t6, $t1, $t3	# (V[2] or V[4]) 			-> $t6
	or $t7, $t0, $t1	# (V[1] or V[2]) 			-> $t7
	and $t8, $t7, $t2	# ((V[1] or V[2]) and V[3]) -> $t8
	sb $t5, res			#Guarda (V[1] and V[5]) en res[1]
	sb $t6, res + 1		#Guarda (V[2] or V[4]) en res[2] 
	sb $t8, res + 2		#Guarda ((V[1] or V[2]) and V[3]) en res[3]
