%include "../include/io.mac"

struc point
    .x: resw 1
    .y: resw 1 
endstruc

section .text
    global points_distance
    extern printf

points_distance:
    ;; DO NOT MODIFY
    
    push ebp
    mov ebp, esp
    pusha

    mov ebx, [ebp + 8]      ; points 
    mov eax, [ebp + 12]     ; distance
    
    ;; DO NOT MODIFY
    ;; Your code starts here

L1:
    mov dh, [ebx + 4 + point.y] 
    cmp dh, [ebx + point.y] 
    je L2
    cmp dh, [ebx + point.y]
    jl L3
    sub dh, [ebx + point.y]
    mov [eax], dh

    jmp nothing

L3:
    xchg dh, [ebx + point.y]
    sub dh,  [ebx + point.y]
    mov  [eax], dh
    jmp nothing

L4: 
    xchg dh, [ebx + point.x]
    sub dh, [ebx + point.x] 
    mov [eax], dh
    jmp nothing

L2: 
    mov dh,  [ebx + 4 + point.x]  
    cmp dh, [ebx + point.x]
    jl L4
    sub dh, [ebx + point.x] 
    mov [eax], dh


nothing:

    ;; DO NOT MODIFY
    popa
    leave
    ret

    ;; DO NOT MODIFY