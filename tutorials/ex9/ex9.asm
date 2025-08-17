global _start

_start:
    push 21
    call times2
    mov ebx, eax
    ;pop ebx technically we need to remove that 21 pushed to stack
    mov eax, 1
    int 0x80

times2:
    push ebp
    mov ebp, esp

    ;         ebp+4    return address
    mov eax, [ebp+8] ; access parameter
    add eax, eax     ; make it twice

    mov esp, ebp
    pop ebp
    ret