.model small
.data 
input2 db ?
.code
.startup
;input number1  
mov ah,01h
int 21h 
;storing in bl
mov bl,al
;input number2  
mov ah,01h
int 21h 
;storing in bh
mov bh,al
;adding
mov ah,0h
mov al,bl
add al,bh
;ascii adjust after addition(unpacking)
aaa
;convert into ascii values
add ax,3030h 
;output(units digit)
mov bx,ax
mov dl,bh
mov ah,02h
int 21h 
;output(tens digit)
mov dl,bl
mov ah,02h
int 21h

end