.data
			dato1: .word 30
			dato2: .word -50
			res: .space 1
.text
main: 		lw $t8,dato1($0)
			lw $t9,dato2($0)
			and $t1,$t1,$0
			and $t0,$t0,$0
			beq $t8,$0,igual
			ori $t0,$0,1
igual: 		slt $t1,$t9,$t8
fineval:	and $t0,$t0,$t1
			sb $t0,res($0)