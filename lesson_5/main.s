%include "misc.inc"

EXTERN _puts
GLOBAL start

SECTION .text

start:
lea rdi, [rel my_global]
push rdi
call _puts

mov rax, MACH_SYSCALL(EXIT)
xor rdi, rdi
syscall
