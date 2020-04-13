;calculate factorial X86 assembly

Include irvine32.inc

.data 
    Var byte  7

.code 
main proc
    	Mov ecx,var1
    	Mov eax,1
	L:
    	     Imul ecx
    	Loop L
	invoke ExitProcess,0
main endp
end main

;calculate factorial ARM assembly

 AREA Prog2, CODE, READONLY

 ENTRY
     MOV        r6,#5     ; load n into r6, and in our case n = 5
     MOV        r7,#1     ; if n = 0, n! = 1
 
Loop  CMP r6, #0 
     MULGT   r7, r6, r7
     SUBGT   r6, r6, #1   ; decrement n
     BGT     loop         ; Keep multiping unless counter == 0
 
 stop      B       stop   ; stop program
 
 END

;Adding three values using three registers ARM assembly

AREA Example1, CODE, READONLY
     ADD r0,r1,r2
     ADD r0,r3

Stop        B    Stop

END


;Adding three values using three registers, and initializing its values ARM assembly

AREA Example2, CODE, READONLY
     MOV r1,#Q ;load r1 with the constant Q
     MOV r2,#R ;load r2 with the constant R
     MOV r3,#S ;load r3 with the constant S
     ADD r0,r1,r2
     ADD r0,r0,r3

Stop  B        Stop
     Q       EQU     1 ; Equate the symbolic name Q to the value 1
     R       EQU     2 ; Equate the symbolic name R to the value 2
     S       EQU     3 ; Equate the symbolic name S to the value 3

END


; Adding three values using three initialized registers Using X86 assembly

.data
     Q  dword 1
     R  dword 2
     S  dword 3
     P  dword ?

.code
    Mov eax, Q
    Mov ebx, R
    Add eax, ebx
    Add eax, s
    Mov P, eax

end