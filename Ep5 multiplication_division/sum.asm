.model flat,c
.code

iMulti proc
    ;function prologue 
    push ebp; this one ebp refers to main
    mov ebp, esp
    push ebx

    ; multiplication
    ; ecx, eax
    mov ecx, [ebp + 8]
    mov eax, [ebp + 12]

    imul eax, ecx ; eax*= ecx;
    ; let's use edx to output
    mov edx, [ebp + 16]
    mov [edx], eax

    ; div, rem | eax, edx
    ; don't change here ebx and edx
    cdq
    idiv dword ptr [ebp + 12]

    mov ebx, [ebp + 20]
    mov [ebx], eax

    mov ebx, [ebp + 24]
    mov [ebx], edx

    
    mov eax, 1; 1 - success code 

    pop ebx
    pop ebp
        ret
iMulti endp
        end