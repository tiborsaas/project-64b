push    0xb800
pop     es
mov     di, (80*12+40)*2
mov     ax, 0x04b0          ; see ascii-dos.gif
stosw
ret
