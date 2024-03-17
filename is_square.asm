%include "../include/io.mac"

section .text
    global is_square
    extern printf

is_square:
    ;; DO NOT MODIFY
    push ebp
    mov ebp, esp
    pusha

    mov ebx, [ebp + 8]      ; dist
    mov eax, [ebp + 12]     ; nr
    mov ecx, [ebp + 16]     ; sq
    ;; DO NOT MODIFY
   
    ;; Your code starts here
L1:
    mov dword [ecx], 0
    mov edx, 0
    cmp ebx, edx
    je L2
    add edx, 1
    mov esi, 3
    cmp edx, [ebx]
    je L2
    cmp edx, [ebx]
    jl L3
    
    add ecx, 4
    add ebx, 4
    dec eax
    cmp eax, 0
    je break
    jmp L1
L3:
    add edx,esi
    add esi, 2
    cmp edx, [ebx]
    je L2
    cmp edx, [ebx]
    jl L3
    add ecx, 4
    add ebx, 4
    jmp L1
L2:
    mov dword [ecx], 1
    add ecx, 4
    add ebx, 4
    jmp L1

break:
    ;; Your code ends here
    
    ;; DO NOT MODIFY
    popa
    leave
    ret
    ;; DO NOT MODIFY