.model small
.stack
.data
N db 4h
num db 5h,3h,2h,4h
.code
.startup
mov cx,00h
mov cl,N
mov bx, offset num
addition: add al,[bx]
inc bx
loop addition
end                                   
                                    
                                    
                                    