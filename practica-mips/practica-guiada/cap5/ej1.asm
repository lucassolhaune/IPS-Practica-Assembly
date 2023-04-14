.data
		vector: .byte 	0,1,1,1,0
		res:	.space	3
.text
main:	lb $t0, vector		#	V[1]
		lb $t1, vector + 1	#	V[2]
		lb $t2, vector + 2	#	V[3]
		lb $t3, vector + 3	#	V[4]
		lb $t4, vector + 4	#	V[5]
		and $s0, $t0, $t4	#	V[1] and V[5]
		sb $s0, res
		or $s1, $t1, $t3	#	V[2] or V[4]
		sb $s1, res + 1
		or $s2, $t0, $t1	#	(V[1] or V[2]) and V[3]
		and $s3, $s2, $t2
		sb $s3, res + 2