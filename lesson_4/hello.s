%include "misc.inc"

global _hello

string:
db "Hello World !", 0xa

_hello:

; We'll be using the stack
push rbp
mov rbp, rsp

; write(1, "Hello World !\n", 15)
mov rax, MACH_SYSCALL(WRITE)
mov rdi, STDOUT

lea rsi, [rel string]

mov rdx, _hello - string

syscall

; Restore original rbp and rsp
mov rsp, rbp
pop rbp
ret
