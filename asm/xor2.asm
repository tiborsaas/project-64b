cwd             	; "clear" DX for perfect alignment
mov 	al,0x13
DRAW: 	int 0x10    ; set video mode AND draw pixel
mov 	ax,cx		; get column in AH
add		ax,di		; offset by framecounter
xor 	al,ah		; the famous XOR pattern
and 	al,32+8		; a more interesting variation of it
mov 	ah,0x0C		; set subfunction "set pixel" for int 0x10
loop 	DRAW		; loop 65536 times
inc 	di			; increment framecounter
in 		al,0x60		; check keyboard ...
dec 	al			; ... for ESC
jnz 	DRAW		; rinse and repeat
ret					; quit program
