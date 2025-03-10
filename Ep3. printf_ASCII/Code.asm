.686 ; pentium or newer
.model flat, stdcall
option casemap :none ; no uppercase or lowercase

; inc
include C:\masm32\include\kernel32.inc 
include C:\masm32\include\masm32.inc

; libs
includelib C:\masm32\lib\masm32.lib
; MSVCRT MICROSOFT RUNTIME LIBRARY
includelib C:\masm32\lib\msvcrt.lib

extern printf : proc
; A -> a 
.data
	message db "Hello,World!", 10, 0; db - define byte
	dupli 	db 5 dup(65), 10, 0
	letter	DWORD 0
	format	db	"%c"
.code 
	main:
		; printf(msg);
		push offset message
		call printf
		; add : C: esp = esp + 4; 
		add esp, 4

		push offset dupli
		call printf
		add esp, 4

		mov eax, 65 ; A in eax now
		add eax, 32 ; we add a difference between 'A' and 'a'
		mov letter, eax

		push letter ; "%c" <- letter will be sent!
		push offset format
		call printf
		add esp, 4

		invoke ExitProcess, 0; return 0;
	end main
