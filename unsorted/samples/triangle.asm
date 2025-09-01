global _start

section .text
_start:
    mov     esi, output          ; ESI = write pointer
    mov     ecx, 1               ; ECX = current line length (starts at 1)

.next_line:
    mov     ebx, 0               ; EBX = stars written on this line

.line_loop:
    mov     byte [esi], '*'      ; write '*'
    inc     esi
    inc     ebx
    cmp     ebx, ecx
    jb      .line_loop           ; keep writing until EBX == ECX

    mov     byte [esi], 10       ; '\n'
    inc     esi

    inc     ecx                  ; next line will be one char longer
    cmp     ecx, maxlines
    jle     .next_line           ; if we haven't exceeded maxlines, do next line

.done:
    ; write(1, output, dataSize)
    mov     eax, 4               ; sys_write
    mov     ebx, 1               ; fd = stdout
    mov     ecx, output          ; buf
    mov     edx, dataSize        ; nbytes
    int     0x80

    ; exit(0)
    mov     eax, 1               ; sys_exit
    xor     ebx, ebx
    int     0x80

section .bss
maxlines  equ       8
dataSize  equ       44           ; sum(1..8)=36 plus 8 newlines = 44
output:   resb      dataSize
