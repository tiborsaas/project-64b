aas
les 	di,[bx-0x6C]
xor 	al,127
mov 	dx,0x331
outsb
dec 	dx
mov 	cl,5
rep 	outsb
ret
