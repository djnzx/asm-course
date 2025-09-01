section .text

global _start

_start:
    mov     eax, [x]    ; load variable 1
    mov     ebx, [y]    ; load variable 2
    add     eax, ebx    ; do the math

    add     eax, '0'    ; make it char

    mov     [sum], eax  ; put result into variable

    mov     ecx, msg    ; address to print
    mov     edx, len    ; number of bytes to print
    mov     ebx, 1      ; stdout
    mov     eax, 4      ; print function
    int     0x80        ; kernel call

    mov     ecx, sum    ; address to print
    mov     edx, 1      ; number of bytes to print
    mov     ebx, 1      ; stdout
    mov     eax, 4      ; print function
    int     0x80        ; kernel call

    mov     ecx, nl     ; address to print
    mov     edx, 1      ; number of bytes to print
    mov     ebx, 1      ; stdout
    mov     eax, 4      ; print function
    int     0x80        ; kernel call

    mov     eax, 1      ; quit function
    int     0x80        ; kernel call

section .data
    x       db 6
    y       db 3
    msg     db  "sum of x and y is "
    len     equ $ - msg
    nl      db 10

segment .bss
    sum resb 1
