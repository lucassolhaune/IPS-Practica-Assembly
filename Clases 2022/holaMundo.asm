.data
	msg: .asciiz "Hola mundo\n"
.text
	li $v0, 4
	la $a0, msg
	syscall