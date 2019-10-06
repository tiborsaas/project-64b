org 100h
    xchg    bp, ax
    mov     dx, text
    int     21h
    ret

text:
    db 'Hello world!$'
