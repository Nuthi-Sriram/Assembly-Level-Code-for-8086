.model small
.stack
.data      
arr dw 50 dup (?) 
n db ?                               
.code
.startup
mov ah,01h
int 21h 
sub al,30h
mov n,al  
mov bl,al
add bl,1
mov cx,0
mov cl,n
mov ah,01h
;Taking the input into array
input: 
mov ah,01h  
int 21h  
aaa
cbw 
mov arr[si],ax 
inc si
inc si
loop input
;Finding the cube
mov si,0  
mov cx,0
mov cl,n 
cubeArray: 
mov cx,0
mov cl,2 
mov ax,arr[si]
cube:     
mul arr[si] 
loop cube:  
mov arr[si],ax
inc si
inc si
dec bl
mov cl,bl
loop cubeArray



mov si,0  
mov cx,0
mov cl,n             
output:     
mov ax,arr[si]
;convert into ascii values
cmp ah,'A'
jz late 
cmp ah,'B'
jz late
cmp ah,'C'
jz late
cmp ah,'D'
jz late
cmp ah,'E'
jz late
cmp ah,'F'
jz late  
jnz early
 
clamp: 
cmp al,'A'
jz late1 
cmp al,'B'
jz late1
cmp al,'C'
jz late1
cmp al,'D'
jz late1
cmp al,'E'
jz late1
cmp al,'F'
jz late1
jnz early1

late:
;output(units digit)
mov bh,ah
add bh,57h
mov dl,bh
mov ah,02h
int 21h 
jmp clamp
early:  
;output(units digit)
mov bh,ah
add ah,30h
mov dl,bh
mov ah,02h
int 21h  
jmp clamp
late1:
;output(tens digit)
mov bl,al
add al,57h
mov dl,bl
mov ah,02h
int 21h
jmp revisit 
early1:
;output(tens digit)
mov bl,al
add al,30h
mov dl,bl
mov ah,02h
int 21h

revisit: 
inc si
loop output  


 


end