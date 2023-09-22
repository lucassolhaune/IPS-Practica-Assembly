.data
			dato1: .word 2			#Carga los enteros
			dato2: .word 10
			dato3: .word 50
			dato4: .word 70
			dato5: .word 34
			res: .space 1			#Reserva memoria para el resultado
.text
main:		lw $t0, dato1			#Carga dato1 en $t0
			lw $t1, dato2			#Carga dato2 en $t1
			lw $t2, dato3			#Carga dato3 en $t2
			lw $t3, dato4			#Carga dato4 en $t3
			lw $t4, dato5			#Carga dato5 en $t4
if:			blt $t4, $t0, elseIf	#Si $t4 < $t0 salta a elseIf
			bgt $t4, $t1, elseIf	#Si $t4 > $t1 salta a elseIf
			j then					#Si $t4 esta entre $t0 y $t1, salta a then
elseIf:		blt $t4, $t2, else		#Si $t4 < $t2 salta a else
			bgt $t4, $t3, else		#Si $t4 > $t3 salta a else
then:		li $t5, 1				#Guarda 1 en $t5
			sb $t5, res				#Almacena 1 en res
			j end					#Salta a end
else:		sb $0, res				#Almacena 0 en res
end: