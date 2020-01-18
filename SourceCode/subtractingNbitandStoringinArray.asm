.model small
.stack
.data
N db 4h
num1 db 43h,6h,7h,8h
num2 db 40h,2h,3h,4h
sum db ?
.code
.startup
mov cx,00h
mov cl,N
clc
addition: mov al,num1[SI]
mov ah,num2[SI]
sub al,ah
mov sum[DI],al
inc SI   
inc di
loop addition
end                                  