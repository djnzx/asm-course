### pure compile

```shell
nasm 1.asm -o 1.hex
```

### compile for further linking

```shell
nasm -f elf32 1.asm -o 1.elf32
```

### linking to get executable

```shell
ld -m elf_i386 -e _start 1.elf32 -o 1
```
