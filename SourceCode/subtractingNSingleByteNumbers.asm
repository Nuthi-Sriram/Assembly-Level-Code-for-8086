.model small
.stack
.data
N db 3h
num db 5h,3h,2h,4h
.code
.startup
mov cx,00h
mov cl,N
mov bx, offset num    
mov al,[bx]
inc bx
subtraction: sub al,[bx]
inc bx
loop subtraction
end                                   
                                    
                                    
                                    