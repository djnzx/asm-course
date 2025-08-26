## 1. intro - 12.08.2025

## 2. code structure, registers - 14.08.2025

## 3. i386 history, etc - 19.08.2025
- fon-neiman
- registers, 
- IP, 
- mov, 
- [], 
- lea, 
- memory operations

## 4. math operations - 21.08.2025

## 5. bit operations - 26.08.2025

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

## 6. FLAGS, jumps - 27.08.2025

- flags
- unconditional jump
- changing flags
- testing values
- conditional jumps

## 7. loops, arrays

- loop
- array

## 8. memory allocation
- type
  - initialized
  - non-initialized
- alignment
  - db, 
  - dw, 
  - dd, 
  - dq
- arrays
- arrays 2d

## 9. stack
- push, 
- pop, 
- SP, 
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

## 10. in / out arduino examples
- in
- out
- digital
- analog

## 11. the full operation stack:
User space -> Kernel space -> Firmware & platform -> Hardware
App -> Library -> VM -> Operation System -> Driver -> Firmware
https://chatgpt.com/share/68a1abe4-c174-800b-ac84-45181e68a1ac

## 12. interruptions 
- interruption concept
- software interruption
- OS interop
- hardware interruption
- examples: 
  - on timer, 
  - on data came via port, 
  - port I/O

## 13. advanced things 
- multitasking fundamentals,
- time slices, 
- problems 
- conditinal code generation, 
- macros, 
- pseudooperators
- double i8087 / 287 / 387 / embedded into 486 dx 

https://www.utf8icons.com/subsets/arrows