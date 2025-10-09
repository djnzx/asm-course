## 1. intro

## 2. code structure, registers

## 3. i386 history, etc

- fon-neiman
- registers, 
- IP, 
- mov, 
- [], 
- lea, 
- memory operations

## 4. math operations

## 5. bit operations

- binary system
- Explain the role of Boolean logic in binary computation
- set, clear, toggle, or invert
- bitwise operations: AND, OR, XOR, NOT
- arity
- truth tables
- no bit, whole register
- syntax
  - reg, reg
  - reg, mem
  - mem, reg
  - reg, value
  - mem, mem - NOT ALLOWED
- not: reg only, mem only

## 6. FLAGS, jumps

- flags
- unconditional jump
- changing flags
- testing values
- conditional jumps

## 7. memory allocation

- type
    - initialized
    - non-initialized
- alignment
    - db,
    - dw,
    - dd,
    - dq
    - ascii
    - asciz
    - equ

## 8. loops, arrays

- cmp, jz, jnz
- loop
- array
- 2D array

## 9. stack

- push 
- pop 
- SP
- usecases

## 10. subroutines

- function call,
- call
- return
  - ret
  - ret 4
  - mov sub, esp 4
- prologue, 
- epilogue, 
- stack size, 
- parameters passing

## 11. in / out arduino examples

- in
- out
- digital
- analog
- mapping
- interfaces
- protocols

## 12. the full operation stack

User space -> Kernel space -> Firmware & platform -> Hardware
App -> Library -> VM -> Operation System -> Driver -> Firmware
https://chatgpt.com/share/68a1abe4-c174-800b-ac84-45181e68a1ac

## 13. interruptions 

- interruption concept
- software interruption
- OS interop
- hardware interruption
- examples: 
  - on timer, 
  - on data came via port, 
  - port I/O

## 14. advanced things 

- multitasking fundamentals,
- time slices, 
- problems 
- conditinal code generation, 
- macros, 
- pseudooperators
- double i8087 / 287 / 387 / embedded into 486 dx 

https://www.utf8icons.com/subsets/arrows

PROMPT:
проаналізувати лекції 1-15                                                                                                                                                                                                                                          
та оновити syllabus.md відповідно фактичного вмісту 