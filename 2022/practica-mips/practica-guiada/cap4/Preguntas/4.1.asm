.data #zona de datos
		numero: .word 2147483647	#Máx. Positivo representable 0x7FFFFFFF
.text #zona de instrucciones
main: 	lw $t0,numero($0)
		addiu $t1,$t0,1