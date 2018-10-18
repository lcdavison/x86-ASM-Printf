section .data

msg:	db 'Hello World',0
msgl:	equ $ - msg

fmt:	db 'Message : %s Length : %d',0

section .text

extern _printf
global _main

_main:

	push ebp	;	Push base pointer onto stack
	mov ebp, esp	;	Move stack pointer to base pointer

	push msgl	;	Push arguments on stack
	push msg
	push fmt
	call _printf	;	Call function

	mov esp, ebp	;	Return stack pointer to esp
	pop ebp		;	Pop base pointer

	ret
