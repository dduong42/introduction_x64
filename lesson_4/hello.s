%include "misc.inc"

global hello

hello:

; We'll be using the stack
push rbp
mov rbp, rsp

; write(1, "Hello World !\n", 15)
mov rax, MACH_SYSCALL(WRITE)
mov rdi, STDOUT

mov rsi, 0x0a2120646c72     ; "rld !\n"
push rsi
mov rsi, 0x6f57206f6c6c6548 ; "Hello Wor"
push rsi
mov rsi, rsp

mov rdx, 15

syscall

; Restore original rbp and rsp
mov rsp, rbp
pop rbp
ret
