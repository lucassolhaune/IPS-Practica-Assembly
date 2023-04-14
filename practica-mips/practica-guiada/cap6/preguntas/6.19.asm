.data
				cadena: .asciiz "hola"
.align 2
				n: .space 4
.text
main: 			la $t0,cadena #carga dir. cadena en $t0
				andi $t2,$t2, 0 #$t2=0
mientras: 		lb $t1,0($t0) #almacenar byte en $t1
				beq $t1,$0,finmientras #si $t1=0 saltar a finmientras
				addi $t2,$t2, 1 #$t2=$t2+1
				addi $t0,$t0, 1 #$t0=$t0+1
				j mientras #saltar a mientras
finmientras: 	sw $t2,n($0) #almacenar $t2 en n