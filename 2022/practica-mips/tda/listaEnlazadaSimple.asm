.data 0x10001000
	slist: .word 0 # inicializado a null
	numbers: .word 1,2,3 # lista de enteros
.text
	main:	la $s0, numbers
			li $s1, 3
	loop:	lw $a0, ($s0)
			jal newnode
			addi $s0, $s0, 4
			addi $s1, $s1, -1
			bnez $s1, loop
			beqz $s1, end

newnode:	move $t0, $a0 # preserva arg 1
			li $v0, 9
			li $a0, 8
			syscall # sbrk 8 bytes long
			sw $t0, ($v0) # guarda el arg en new node
			lw $t1, slist
			beq $t1, $0, first # ? si la lista es vacia
			sw $t1, 4($v0) # inserta new node por el frente
			sw $v0, slist # actualiza la lista
			jr $ra
			
first:		sw $0, 4($v0) # primer nodo inicializado a null
			sw $v0, slist # apunta la lista a new node
			jr $ra

end:		li $v0, 10
			syscall