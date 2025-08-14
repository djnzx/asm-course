### 1. Intro

- compilers
- low level vs high level

### 2. Code structure

- entry point _start
- exit code `echo $?`
- code, data
- operation [operand, ...]
- registers: fixed with, different purposes
  - AH, AL, AX, EAX, RAX
  - BX, CX, DX
  - SI, DI
- online IDE

### 3. Memory allocation, accessing. Constants, Literals

- labels
- initialized
  - db
  - dw
  - dd
  - dq
- non-initialized
- literals
- memory access
- mov ax, 1
- mov ax, bx
- mov [x], ax
- mov ax, [x]
  - mov byte   8
  - mov word  16
  - mov dword 32
  - mov qword 64
- rep movsb
- rep movsb

### 4. Math operations

- add bx, cx     bx = bx + cx
- sub bx, dx     bx = bx - dx
- mul bx         ax = ax * bx
- div dx         ax = ax / dx

### 5. Comparing, Flags

- comparing
- flags
- jumps unconditional (jmp)
- jumps conditional
  - je  == 
  - jne !=
  - jg  >
  - jge >=
  - jl  <
  - jle <=
- conditional 

### 6. Loops

- normal loops
- conditional loops

### 7. Bitwise Operations

### 8. Structure, Stack

- labels
- subroutines
- call / ret
- EIP, ESP, EBP

### 9.

### 10.

### 11.

### 12.