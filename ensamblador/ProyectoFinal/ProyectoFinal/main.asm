;
; ProyectoFinal.asm
;
; Created: 17/01/2023 10:10:57 p. m.
; Author : jvmom
;


; Replace with your application code
	.def cte = r17
	.def temp = r16
	.def cont1_1 = r21
	.def cont2_1 = r19
	.def cont3_1 = r20
	.def cont1_2 = r22
	.def cont2_2 = r23
	.def cont3_2 = r24
	.def cont1_3 = r25
	.def cont2_3 = r26
	.def cont3_3 = r27
	.cseg
	.org 0

vuelta: ldi temp, $81
out portb, temp
	ldi cte, $01
	ldi cont1_1,31 ;31
lazo3_1: ldi cont2_1,200 ;200
lazo2_1: ldi cont3_1,200 ;200
lazo1_1: nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

	sub cont3_1,cte
	brne lazo1_1

	sub cont2_1,cte 
	brne lazo2_1

	sub cont1_1,cte
	brne lazo3_1 

	;ldi r18, $81

	;sub temp, r18
	;breq dos


;dos: ldi temp,$42
	ldi temp,$42
	out portb, temp
;delay


	ldi cte, $01
	ldi cont1_2,1 ;31
lazo3_2: ldi cont2_2,2 ;200
lazo2_2: ldi cont3_2,2 ;200
lazo1_2: nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

	sub cont3_2,cte
	brne lazo1_2

	sub cont2_2,cte 
	brne lazo2_2

	sub cont1_2,cte
	brne lazo3_2 

	ldi temp, $24
	out portb, temp

	ldi cte, $01
	ldi cont1_3,31 ;31
lazo3_3: ldi cont2_3,200 ;200
lazo2_3: ldi cont3_3,200 ;200
lazo1_3: nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

	sub cont3_3,cte
	brne lazo1_3

	sub cont2_3,cte 
	brne lazo2_3

	sub cont1_3,cte
	brne lazo3_3 

	ldi temp, $18
	out portb, temp
	breq vuelta