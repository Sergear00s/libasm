section .text
    global _start

_start:
    push 5
    push 6
    call add_f


    mov eax, 1   
    xor ecx, ecx  
    int 0x80

add_f:
    pop ecx
    ;pop ecx
    ;add ebx, ecx
    ;mov eax, ebx
    ;push eax
    ret

