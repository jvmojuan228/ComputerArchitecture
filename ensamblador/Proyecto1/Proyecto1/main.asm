;
; Proyecto1.asm
;
; Created: 09/12/2022 07:06:46 p. m.
; Author : jvmom
;


; Replace with your application code
;para probar poner los contadores a 1
	.def temp=r16
	;.def cte=r17
	;.def cont1=r18
	;.def cont2=r19
	;.def cont3=r20
	.cseg
	.org 0
	ldi r22, $00
	ldi temp, $01
izquierda:out portb,r22;temp
;;;;;;
	ldi r17,$01;cte,$01
	ldi r18, 31;cont1,31
lazo3:ldi r19, 200;cont2, 200
lazo2:ldi r20, 200;cont 3, 200

lazo1:nop
	nop
	nop
	nop
	nop
	nop
	nop

	sub r20, r17; cont3, cte
	brne lazo1
;investigar como hacerlo de tarea
; va decrementando hasta que sea cero
	sub r19,r17;cont2, cte
	brne lazo2
;es similar a un segundo ciclo for anidado
	sub r18,r17;cont1,cte
	brne lazo3
	;;;;;;;;;;;;;;;;;;;;;;
	lsl r16;temp
	out portb, r16;portb,temp
;delay de 125ms que es lo que hacemos con los lazos

	ldi r21, $80 ;$80 es porque cuando ya recorrio todos los leds
	sub r16, r21;temp, r21 ;si da cero hacemos un breq para hacer el corrimiento a la derecha
	breq derecha
	add r16, r21;temp, r21
	lsl r16;temp
	rjmp izquierda
derecha: ldi r16,$40;temp,$40
derecha2:out portb, r16;portb, temp
	;delay de 125, lo mismo de abajo de izquierda, no usar los mismos lazos
	ldi r18, 31;cont1, 1;31
lazo6:ldi r19,200 ;cont2, 1;200
lazo5:ldi r20,200 ;cont3, 1;200

lazo4:nop
	nop
	nop
	nop
	nop
	nop
	nop

	sub r20, r17;cont3, cte
	brne lazo4
	sub r19,r17;cont2, cte
	brne lazo5
	sub r18,r17;cont1,cte
	brne lazo6

	;checando que ya recorrimos todo
	ldi r21,$01
	sub r16,r21;temp,r21
	breq izquierda2
	add r16,r21;temp,r21
	lsr r16;temp
	rjmp derecha2
izquierda2: ldi r16, $02;temp,$02
	rjmp izquierda



