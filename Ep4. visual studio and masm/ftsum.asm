.686
.model flat, c
.code

ft_sum proc
	push ebp ; allow us to return later to our function
	mov ebp, esp 

	mov eax, [ebp + 8]
	mov ecx, [ebp + 12]
	add eax, ecx

	pop ebp
	ret
ft_sum endp
end