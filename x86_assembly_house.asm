;Sadegh Ghasemi <40011319> & Parsa Bordbar <40011400>

;_____Colors____________
                      ;|
; black_color,00h      |
                      ;|
; sky_blue_color,03    |
                      ;|
; red_color,04         |
                      ;|
; green_color,0a       |
                      ;|
; yellow_color,0e      |
                      ;|
; brown_color,06       |
;                      |
; white_color, 07      |
;______________________|



X1 dw ?
Y1 dw ?
X2 dw ?
Y2 Dw ? 
X3 Dw ?
Y3 Dw ?
X4 Dw ?
Y4 Dw ?


length dw ?
width dw ?
area dw ? 
perimeter dw ?

MOV AH,00
MOV AL,12H
INT 10H

MOV X1,40
MOV Y1,40

MOV X2,140
MOV Y2,120        
             
MOV X3,90
MOV Y3, 40

MOV X4,90
MOV Y4,120
             
MOV CX,X1
MOV DX,Y1

LEFT:MOV AH,0ch
MOV AL,07h
INT 10H
INC dX
CMP dx, Y2
JNZ LEFT

MOV CX,X1   
MOV DX,Y2  

BUTTOM: MOV AH,0ch 
MOV AL,07h
INT 10H
INC cx 
cmp cx , X2
JNZ BUTTOM

MOV CX,X2
MOV DX,Y2 

RIGHT: MOV AH,0ch
MOV AL,07h
INT 10H
DEC dX
cmp dx , Y1
JNZ RIGHT  

MOV CX,X2
MOV DX,Y1  

TOP: MOV AH,0ch
MOV AL,07h
INT 10H
dec CX
cmp Cx , X1
JNZ TOP
 
MOV cx, X3
MOV dx, Y3

MIDDEL: MOV AH, 0ch
MOV AL, 03h
INT 10h
INC dx
CMP dx, Y4
JNE MIDDEL
 
MOV CX, X1
MOV DX, Y1

LEFT_DIAMETER: 
MOV AH, 0ch  
MOV AL, 04h
INT 10H
INC CX
INC DX
mov ax, cx
test ax, 1
jnz CHECK 
INC DX
CHECK: CMP CX,X4
JNZ LEFT_DIAMETER       
              
MOV CX, X3
MOV DX, Y3
LEFT_DIAMETER_2: 
MOV AH, 0ch  
MOV AL, 0eh
INT 10H
DEC CX
INC DX
mov ax, cx
test ax, 1
jnz CHECK1 
INC DX
CHECK1: CMP CX,X1
JNZ LEFT_DIAMETER_2
                
  
MOV CX, X3
MOV DX, Y3

RIGHT_DIAMETER: 
MOV AH, 0ch  
MOV AL, 06h
INT 10H
INC CX
INC DX
mov ax, cx
test ax, 1
jnz CHECK3 
INC DX
CHECK3: CMP CX,X2
JNZ RIGHT_DIAMETER       
              
MOV CX, X2
MOV DX, Y3
RIGHT_DIAMETER_2: 
MOV AH, 0ch  
MOV AL, 02eh
INT 10H
DEC CX
INC DX
mov ax, cx
test ax, 1
jnz CHECK4 
INC DX
CHECK4: CMP CX,X3
JNZ RIGHT_DIAMETER_2              
                
mov ax , Y2
mov bx , X2
sub bx , X1 
sub ax , Y1 
MOV length,bx 
MOV width, ax
MUL bx
MOV area, ax
ADD bx,width
ADD bx,bx
MOV perimeter, bx

ret   