; You can find the syscall table here:
; http://www.opensource.apple.com/source/xnu/xnu-1504.3.12/bsd/kern/syscalls.master
;
; Mach syscall are prefixed with 0x2000000

%define EXIT 1
%define MACH_SYSCALL(nb) 0x2000000 + nb

global start

start:

; The syscall number is stored in rax
mov rax, MACH_SYSCALL(EXIT)

; The first argument is stored in rdi
mov rdi, 42

syscall
