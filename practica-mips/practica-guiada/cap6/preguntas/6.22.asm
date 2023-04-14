.data
			vector: .word 6,7,8,9,10,1
			res: .space 4
.text
main: 		la $t2,vector #$t2=dirección de vector
			and $t3,$0,$t3 #$t3=0
			li $t0,0 #$t0=0
			li $t1,6 #$t1=5
para:	 	bgt $t0,$t1,finpara #si $t0>$t1 saltar finpara
			lw $t4,0($t2) #carga elemento vector en $t4
			add $t3,$t4, $t3 #suma los elementos del vector
			addi $t2,$t2, 4 #$t2=$t2+4
			addi $t0,$t0, 1 #$t0=$t0+1
			j para #saltar a bucle
finpara: 	sw $t3, res($0) #almacenar $t3 en res