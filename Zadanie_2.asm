%include "io.inc"
;(a+b)*c
;31 19 13
;12 -3 -10
section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    xor eax, eax
    
    
    FLD DWORD [c]
    FLD DWORD [a]
    FLD DWORD [b]
    
    FADD
    FMUL
    
    FST DWORD [r]
    
    ret
    
section .data

a: DD 0x41f80000    ;0x41400000
b: DD 0x41980000    ;0xc0400000
c: DD 0x41500000    ;0xc1200000
r: DD 0x00000000