.data
	dir: .asciiz "Hola. Ha funcionado.\n"
.text
	main: li $v0,4	#C�digo de imprimir cadena
	la $a0, dir + 5 #Direcci�n de la cadena
	syscall 		#Llamada al sistema