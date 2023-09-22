.data
	dir: .asciiz "Hola. Ha funcionado.\n"
.text
	main: li $v0,4	#Código de imprimir cadena
	la $a0, dir + 5 #Dirección de la cadena
	syscall 		#Llamada al sistema