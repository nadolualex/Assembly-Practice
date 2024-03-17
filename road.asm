%include "../include/io.mac"

struc point
    .x: resw 1
    .y: resw 1
endstruc

section .text
    global road
    extern points_distance
    extern printf

road:
    ;; DO NOT MODIFY
    push ebp
    mov ebp, esp
    pusha

    mov eax, [ebp + 8]      ; points
    mov ecx, [ebp + 12]     ; len
    mov ebx, [ebp + 16]     ; distances
    ;; DO NOT MODIFY

    ;; Your code starts here

    mov edx, 0
L1:
    push ebx
    mov dword [ebx], 0
    add ebx, 4
    push eax
    add eax, 4
    call points_distance
    add esp, 8
    inc edx
    cmp edx, ecx
    jne L1
    jmp break

break:
    mov ebx, [ebp + 16]
    ;; Your code ends here
  
    ;; DO NOT MODIFY
    popa
    leave
    ret
    ;; DO NOT MODIFY