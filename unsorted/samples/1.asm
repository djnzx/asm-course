global  _start

section .data
x       db "Hello, world!", 0x0a ; aligned to byte (1 byte)
len1    equ $ - x
y       dw "ABC"      ; aligned to word (2 bytes), so: "ABC", 0
len2    equ $ - y
z       dd "ABCDE"    ; aligned to double word (4 bytes), so: "ABCDE", 0,0,0
len3    equ $ - z
k       dq "ABCDEFGKX"; aligned to quad word (8 byte), so: "ABCDEFGKX", 0,0,0,0,0,0,0
len4    equ $ - k

_start:
        mov     eax, 1      ; quit function
        mov     ebx, 13     ; quit code
        int     0x80        ; kernel call
