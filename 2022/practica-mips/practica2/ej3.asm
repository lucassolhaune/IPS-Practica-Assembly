.data
		V: .word 1,-4,-5,2	#Vector de enteros
		res: .space 1		#Variable booleana
.text
main:	lw $t0, V			#Almaceno V[1] en $t0
		lw $t1, V + 4		#Almaceno V[2] en $t1
		lw $t2, V + 8		#Almaceno V[3] en $t2
		lw $t3  V + 12		#Almaceno V[4] en $t3
if:		bgez $t0, else		#Si cualquiera de los enteros es mayor o igual a 0, salta a else y almaceno un 0 como resultado
		bgez $t1, else
		bgez $t2, else
		bgez $t3, else
then:	li $t4, 1			#Si ninguno es mayor o igual a 0, es decir, si todos son menores que 0,
	 	sb $t4, res			#entonces almacena 1 en el registro $t4 y lo guarda en memoria como resultado.
	 	j fin				#Salta a fin para finalizar la ejecucion
else: 	sb $0, res
fin:
