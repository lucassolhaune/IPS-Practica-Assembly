.data
msg1: .asciiz "Ingrese texto (max 16): "
input: .asciiz
cont: .word 0
.text
main:
	li $t0, 0 #inicio contador t0
loop:
	add $t0, $t0, 1 #Suma 1 a $t0
	#Muestra mensaje por pantalla
	la $a0, msg1
	li $v0, 4
	syscall
	#Pide un string de 16 caracteres por teclado
	la $a0,input
	li $a1, 16
	li $v0, 8
	syscall
	#Termina el loop cuando el contador alcanza 2
	beq $t0, 2, end
	j loop
end:
	li $v0, 10
	syscall
		
