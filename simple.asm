%include "../include/io.mac"

section .text
    global simple
    extern printf

simple:
    ;; DO NOT MODIFY
    push    ebp
    mov     ebp, esp
    pusha

    mov     ecx, [ebp + 8]  ; len
    mov     esi, [ebp + 12] ; plain
    mov     edi, [ebp + 16] ; enc_string
    mov     edx, [ebp + 20] ; step

    ;; DO NOT MODIFY
   
    ;; Your code starts here
    mov     ebx, 0
L1:
    add     [esi + ebx], edx
    cmp     byte [esi + ebx], 91 ; 90 - ascii code of Z
    jl      L2
    sub     byte  [esi + ebx], 26
    

L2:
    mov     al, [esi + ebx]
    mov     byte [edi + ebx], al 
    add     ebx, 1
    cmp     ebx,ecx
    jl      L1
    ;; Your code ends here

    ;; DO NOT MODIFY

    popa
    leave
    ret
    
    ;; DO NOT MODIFY
