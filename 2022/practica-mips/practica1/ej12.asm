.data 0x10000000
		V: .word 10,20		#Guarda un vector de numeros enteros a partir de la direccion 0x10000000
.text
main:	lw $t0, V			#Carga el entero 10 en el registo $t0
		lw $t1, V + 4		#Carga el entero 20 en el registro $t1 
		add $t2, $t0, $t1	#Suma los enteros 10 y 20, y el resultado se guarda en el registro $t2
		sw $t2, V + 8		#Almacena en la direccion 0x10000008 el resultado de la suma
