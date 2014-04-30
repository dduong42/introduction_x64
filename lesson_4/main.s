%include "misc.inc"

extern _hello
global start

start:
call _hello

; _exit(0);
mov rax, MACH_SYSCALL(EXIT)
xor rdi, rdi
syscall
