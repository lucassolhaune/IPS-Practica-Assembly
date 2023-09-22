.data 0x10000000
		num: .word 0x1237
.text
main:	lw $t0, num				#Carga el numero 0x1237 en el registro $t0
		add $t1, $t0, $t0		#Suma 32 veces 0x1237 y el resultado se acumula en el registro $t1
		add $t1, $t1, $t0
		add $t1, $t1, $t0
		add $t1, $t1, $t0
		add $t1, $t1, $t0
		add $t1, $t1, $t0
		add $t1, $t1, $t0
		add $t1, $t1, $t0
		add $t1, $t1, $t0
		add $t1, $t1, $t0
		add $t1, $t1, $t0
		add $t1, $t1, $t0
		add $t1, $t1, $t0
		add $t1, $t1, $t0
		add $t1, $t1, $t0
		add $t1, $t1, $t0
		add $t1, $t1, $t0
		add $t1, $t1, $t0
		add $t1, $t1, $t0
		add $t1, $t1, $t0
		add $t1, $t1, $t0
		add $t1, $t1, $t0
		add $t1, $t1, $t0
		add $t1, $t1, $t0
		add $t1, $t1, $t0
		add $t1, $t1, $t0
		add $t1, $t1, $t0
		add $t1, $t1, $t0
		add $t1, $t1, $t0
		add $t1, $t1, $t0
		add $t1, $t1, $t0
		sw $t1,	num + 4		#Almacena el resultado en 0x10000004
