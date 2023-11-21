# . Diseña un programa ensamblador que defina, en el espacio de datos, la siguiente cadena de caracteres: “Esto es un problema” utilizando
#a) .ascii
#b) .byte
#c) .word

.data
	frase1: .ascii "Esto es un problema"
	frase2: .byte 'E','s','t','o',' ', 'e','s',' ','u','n',' ','p','r','o','b','l','e','m','a'
	frase3: .word # Se reemplazan las letras por los numeros de la tabla ascii