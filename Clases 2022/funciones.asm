.data 
	num1: .word 3
	num2: .word 4
.text
.globl main
main:	la $a0, num1
		la $a1, num2
		jal swap
exit:	li, $v0, 10
		syscall
		
#Metodo Burbuja		
#void swap(*int, *int)
swap:	lw $t1, ($a0)
		lw $t0, ($a1)
		sw $t1, ($a1)
		sw $t0, ($a0)
		jr $ra		#return