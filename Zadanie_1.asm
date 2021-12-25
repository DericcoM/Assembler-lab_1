%include "io.inc"
;(a+b)*c
;31 19 13
;12 -3 -10
section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    MOV   AX, 0x1F ;0xC
    MOV   BX, 0x13 ;0xFFFD
    MOV   CX, 0xD  ;0xFFF6

    ADD AX, BX

    IMUL CX
    ret 
