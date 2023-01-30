;
; Pruebas.asm
;
; Created: 20/12/2022 01:58:44 p. m.
; Author : jvmom
;


; Replace with your application code
	.cseg
	.org 0

	ldi r16,$02
	ldi r17,$01
	add r17,r16
	out portb,r17
	nop
	nop
	nop

