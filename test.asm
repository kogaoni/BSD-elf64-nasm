; netbsd 9.2 gcc 7.5.0 tested nasm 2.15.05
; nasm -f elf64 test.asm -o test.o
; gcc -e main -lc test.o -o test
; BSD 2 clause license 
[bits 64]
GLOBAL main 
EXTERN puts

[SEGMENT .DATA]
msg db "testing one two",13,0

[SEGMENT .BSS]

[SEGMENT .TEXT]
main:

    mov rdi,msg
    call puts

    mov rdi,0x0
    mov ax,0x1
    int 0x80


