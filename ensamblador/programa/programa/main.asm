;
; programa.asm
;
; Created: 07/12/2022 07:29:37 p. m.
; Author : jvmom
;


; Replace with your application code
.cseg
.org 0
ldi r16,$03
ldi r17,$02
add r17,16
out portb,r17
nop
nop
