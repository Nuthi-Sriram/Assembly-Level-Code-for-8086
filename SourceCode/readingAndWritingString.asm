.model small
.data
msg db 10,?
.stack
.code
.startup  
mov dx, offset msg
mov ah,0Ah
int 21h
inc si

add dx,2
mov ah,09h  

int 21h  

end