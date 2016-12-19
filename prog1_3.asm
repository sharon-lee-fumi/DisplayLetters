ORG 100h      
MOV AX,0xB800
MOV DS,AX     
MOV CL,'A' 
MOV CH,00001110b    
MOV BX,0x0000

 
uper: 
 
    MOV [BX],CX 
    INC BX 
    INC BX
    INC CL
    CMP CL,5Ah
    JLE uper

MOV CL,'a'

lower: 
     
    MOV [BX],CX 
    INC BX 
    INC BX
    INC CL
    CMP CL,7Ah
    JLE lower 

RET          