; Same program as in the lesson 1.
; But now, we do it with a function call.


; Here we say that we need to use _exit
extern _exit
global start

start:

; We put the first argument in rdi
mov rdi, 42
call _exit
