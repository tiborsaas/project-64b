push    0xb800              ;start in mode 3
pop     ds
mov     bx, (80*12+40) * 2  ;target coordinate (40,12)
                            ;We need a multiplier 2 since one char needs
                            ;two bytes in memory: char and color is a byte each
mov     ax, 0x0401          ;0x04 means red (4) on black (0)
                            ;while the 0x01 is the first ASCII char - a smiley.
mov     [bx], ax
ret
