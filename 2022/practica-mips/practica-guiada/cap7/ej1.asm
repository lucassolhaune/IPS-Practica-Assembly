.data
	promptMessage1:	.asciiz	"Ingrese el primer numero: "
	num1:			.word	0
	promptMessage2:	.asciiz	"Ingrese el segundo numero:"
	num2:			.word	0
	resultMessage1:	.asciiz	" "
	resultMessage2:	.asciiz	" +"
	resultMessage3:	.asciiz " "
	resultMessage4:	.asciiz " = "
	result:			.word	0
.text
	.globl main
		main:
			li $v0, 4
			la $a0, promptMessage1
			syscall
			
			li $v0, 5
			syscall
			sw $v0, num1
			lw $t0, num1
			
			li $v0, 4
			la $a0, promptMessage2
			syscall
			
			li $v0, 5
			syscall
			sw $v0, num2
			lw $t1, num2
			
			add $t2, $t1, $t0
			sw $t2, result
			
			li $v0, 4
			la $a0, resultMessage1
			syscall
			
			li $v0, 1
			lw $a0, num1
			syscall
			
			li $v0, 4
			la $a0, resultMessage2
			syscall
			
			li $v0, 4
			la $a0, resultMessage3
			syscall
			
			li $v0, 1
			lw $a0, num2
			syscall
			
			li $v0, 4
			la $a0, resultMessage4
			syscall
			
			li $v0, 1
			lw $a0, result
			syscall
			
			li $v0, 10
			syscall
			
			