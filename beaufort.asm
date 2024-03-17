%include "../include/io.mac"
section .data
    lentext dd 0
    lenkey dd 0
    key dd 0
    text dd 0
    i dd 0

section .text
    global beaufort
    extern printf

; void beaufort(int len_plain, char *plain, int len_key, char *key, char tabula_recta[26][26], char *enc) ;
beaufort:
    ;; DO NOT MODIFY
    push ebp
    mov ebp, esp
    pusha

    mov eax, [ebp + 8]  ; len_plain
    mov ebx, [ebp + 12] ; plain (address of first element in string)
    mov ecx, [ebp + 16] ; len_key
    mov edx, [ebp + 20] ; key (address of first element in matrix)
    mov edi, [ebp + 24] ; tabula_recta
    mov esi, [ebp + 28] ; enc
    ;; DO NOT MODIFY
    ;; TODO: Implement spiral encryption
    ;; FREESTYLE STARTS HERE

    mov dword [lentext], eax
    mov dword [lenkey], ecx
    mov dword [text], ebx
    mov dword [key], edx
    xor eax, eax
    xor ecx, ecx
    xor edi, edi

L1:
    mov al, byte [ecx + edx] 
    sub al, byte [edi + ebx]
    cmp al, 0
    jge L2 
    add al, 26
    jmp L2

L2: 
    add al, 65
    mov byte [esi + edi], al
    inc ecx
    cmp dword [lenkey] , ecx
    jg L3
    mov ecx, 0
    jmp L3

L3:
    add edi, 1
    cmp dword [lentext], edi
    jg L1
    jmp break

break:

    ;; FREESTYLE ENDS HERE
    ;; DO NOT MODIFY
    popa
    leave
    ret
    ;; DO NOT MODIFY

