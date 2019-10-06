push    ss
push    0xb800
pop     ss
mov     sp,(80*12+40)*2
mov     ax, 0x0401
push    ax
pop     ss
int     0x20
