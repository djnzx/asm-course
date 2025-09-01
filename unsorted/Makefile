# Makefile for i386 Linux int 0x80 demos

PROG := 1
ASM  := $(PROG).asm
OBJ  := $(PROG).o
ELF  := $(PROG)
TEXTBIN := $(PROG).text.bin

all: $(ELF)

$(ELF): $(OBJ)
	ld -m elf_i386 -e _start --build-id=none --gc-sections $(OBJ) -o $(ELF)
	strip --strip-all $(ELF)

$(OBJ): $(ASM)
	nasm -f elf32 $(ASM) -o $(OBJ)

run: $(ELF)
	./$(ELF)

clean:
	rm -f $(OBJ) $(ELF) $(TEXTBIN)

# Extract raw opcodes from .text (just CPU instructions)
opcodes: $(ELF)
	objcopy -O binary -j .text $(ELF) $(TEXTBIN)
	@if command -v xxd >/dev/null 2>&1; then \
	  xxd -g 1 $(TEXTBIN) | head -n 64; \
	else \
	  hexdump -C $(TEXTBIN) | head -n 64; \
	fi

# Disassemble raw opcodes as 32-bit
disasm: opcodes
	ndisasm -b 32 $(TEXTBIN) | head -n 100

