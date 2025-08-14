global _start

section .text
_start:
   mov ecx, 10   ; set ecx to 10
   mov ebx, 42   ; exit status is 42
   mov eax, 1    ; sys_exit system call

;   unconditional
;   jmp exit      ; EIP is adjusted, exit code 42

   cmp ecx, 5    ; compare ecx to 5
   jl lt         ; ecx < 5. 10 < 5 => false
   jg gt         ; ecx > 5. 10 > 5 => true

;   jl skip       ; jump if less than
;   mov ebx, 13   ; exit status is 13

lt:
   mov ebx, 13   ; exit status
   jmp exit
gt:
   mov ebx, 14   ; exit status
exit:
   int 0x80
