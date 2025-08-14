all:
	nasm -f elf32 ex10.asm -o ex10.o
	gcc -m32 ex10.o -o ex10
	#gcc -m32 ex10.o -o ex10 -Wl,-z,noexecstack

clean:
	rm -f ex10.o ex10

run:
	./ex10
