.MODEL small
.STACK
.DATA
N db 5
array db 7h,20h,4h,3h,50h
.CODE 
.STARTUP
mov cx,00
mov cl,N
mov al,array[si]
dec cl
inc si
sorting:cmp al,array[si]
ja next
mov al,array[si]
next:inc si  

loop sorting
END