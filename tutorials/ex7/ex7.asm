global _start

_start:
    ; semantically
    ; push EIP
    ; jmp f1
    call f1

    mov eax, 1
    int 0x80

f1:
    mov ebx, 42
    ; semantically
    ; pop eax
    ; jmp eax
    ret
