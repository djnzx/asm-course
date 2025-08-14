; int2str:
;   IN:  EAX = unsigned integer
;   OUT: ECX = pointer to start of string
;        EDX = length of string
;   Uses: EAX, EBX, ECX, EDX, ESI, EDI
section .bss

buffer  resb 11                  ; max 10 digits + null terminator

section .text

int2str:
    mov     ESI, buffer + 10    ; point to end of buffer space
    mov     BYTE [ESI], 0       ; null-terminate

    cmp     EAX, 0
    jne     .convert
    ; Special case: 0
    dec     ESI
    mov     BYTE [ESI], '0'
    mov     ECX, ESI
    mov     EDX, 1
    ret

.convert:
    ; Convert number to ASCII digits backwards
    mov     EBX, 10
.next_digit:
    xor     EDX, EDX         ; clear high part for div
    div     EBX              ; EAX / 10 → EAX=quotient, EDX=remainder
    dec     ESI
    add     DL, '0'          ; remainder → ASCII
    mov     [ESI], DL
    test    EAX, EAX
    jnz     .next_digit

    mov     ECX, ESI         ; start of string
    mov     EDX, buffer + 10
    sub     EDX, ESI         ; length
    ret

section .data
    nl db 10

section .text

global _start
_start:
    mov eax, 1234567890
    call int2str      ; ECX=start, EDX=len

    ; write to stdout
    mov eax, 4        ; sys_write
    mov ebx, 1        ; fd=stdout
    mov ecx, ecx      ; buffer ptr
    mov edx, edx      ; length
    int 0x80

    ; newline
    mov eax, 4
    mov ebx, 1
    mov ecx, nl
    mov edx, 1
    int 0x80

    ; exit
    mov eax, 1
    xor ebx, ebx
    int 0x80