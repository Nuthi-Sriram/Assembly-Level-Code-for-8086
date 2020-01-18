.model small
.stack
.data
N db 10
incr db 1
result db ?
.code
.startup
mov cx,00
mov cl,N
clc
addition: add al,1  
add result,al
loop addition
end                                  