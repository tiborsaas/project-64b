mov 	al,	3Fh			;	set UART mode - command
mov 	dx,	331h		;	MIDI Control Port
out 	dx,	al 			;	send !
dec 	dx				;	MIDI Data Port ( = 330h )
main:
mov 	al,	90h			;	send note on channel 0 - command
out 	dx,	al			;	send !
mov 	al,	56h			;	data byte 1 : KEY = 56h
out 	dx,	al			; 	send !
mov 	al,	67h			;	data byte 2 : VOLUME = 67h
out 	dx,	al			;	send !
_wait:
mov 	al,	[fs:0x46c]	;	read timer
test 	al,	3			;	skip 3 values
jnz 	_wait			;
inc 	byte [fs:0x46c]	; 	inc manually to prevent retrigger
in 		al,	0x60		;	check for ESC
dec 	al				;
jnz 	main			;	no? repeat
ret						;	quit
