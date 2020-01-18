.model small
.stack
.data
N db 4h
num1 db 3h,2h,3h,4h
num2 db 40h,6h,7h,8h
sum db ?
.code
.startup
mov cx,00h
mov cl,N
clc
addition: mov al,num1[SI]
mov ah,num2[SI]
adc al,0h
clc
add al,ah
mov sum[DI],al
inc SI   
inc di
loop addition
end                                  