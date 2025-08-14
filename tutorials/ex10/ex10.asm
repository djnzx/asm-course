global main

extern printf

section .text
main:
    push ebp
    mov ebp, esp

    push 123
    push msg
    call printf
    add esp, 8

    mov eax, 0
    mov esp, ebp
    pop ebp
    ret

section .data
    msg db "Testing %i...", 0x0a, 0x00
