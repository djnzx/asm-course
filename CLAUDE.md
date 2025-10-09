# ASM Course

Ukrainian-language assembly language course covering x86-64 and low-level programming.

## Structure

- `lectures/<N>-<topic>/plan<N>.md` — main lecture text (Ukrainian)
- `lectures/<N>-<topic>/q.txt` — questions/exercises
- `lectures/syllabus.md` — full course outline

## Lectures

| #  | Topic                                              | Status      |
|----|----------------------------------------------------|-------------|
| 1  | Intro                                              | done        |
| 2  | Code structure, registers                          | done        |
| 3  | i386 history, mov/lea/memory                       | done        |
| 4  | Math operations                                    | done        |
| 5  | Bit operations                                     | done        |
| 6  | FLAGS, jumps                                       | done        |
| 7  | Memory allocation                                  | done        |
| 8  | Loops, arrays                                      | done        |
| 9  | Stack                                              | done        |
| 10 | Subroutines                                        | done        |
| 11 | I/O, interrupts, Arduino                           | done        |
| 12 | Full operation stack                               | done        |
| 13 | C-language interop                                 | done        |
| 14 | Running on OS / bare metal                         | in progress |
| 15 | Advanced: Missing parts: multitasking, macros, FPU | stub        |

## Writing style

- Language: Ukrainian
- Tone: explanatory, with analogies for abstract concepts
- Each section has a time estimate in the heading (e.g. `~10 хв`)
- Sections flow from motivation → theory → practical examples → common mistakes
- Code examples use NASM syntax for ASM, standard C for C
- Не робимо опис від першої та другої особи. Робимо від третьої особи
- Стиль академічний, але адаптований під зручну розповідь
- Для утримання уваги робимо речення довжиною не більше 25-30 слів
- Технічні деталі терміни використовувамо, але код не вставляємо, це лекція.
