.MODEL SMALL
.STACK
.DATA
num1 db 01h
num2 db 02h
.code     
.startup
mov bh,num1
add bh, num2
end