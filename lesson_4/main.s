%include "misc.inc"

extern hello
global start

start:
call hello

; _exit(0);
mov rax, MACH_SYSCALL(EXIT)
xor rdi, rdi
syscall
