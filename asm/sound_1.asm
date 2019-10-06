mov 	al,	3Fh		;	set UART mode - command
mov 	dx,	331h	;	MIDI Control Port
out 	dx,	al 		;	send !
dec 	dx			;	MIDI Data Port ( = 330h )
mov 	al,	90h		;	send note on channel ZERO - command
out 	dx,	al		;	send !
mov 	al,	56h		;	data byte 1 : KEY = 56h
out 	dx,	al		; 	send !
mov 	al,	67h		;	data byte 2 : VOLUME = 67h
out 	dx,	al		;	send !
ret					; 	quit
