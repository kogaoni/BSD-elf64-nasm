testprog:	test.asm
	nasm -f elf64 test.asm
	gcc -e main -lc test.o -o test

