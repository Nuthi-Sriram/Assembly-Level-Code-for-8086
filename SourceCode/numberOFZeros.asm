.model small
.stack
.data
num db 10h
.code
.startup
mov bl,00h
mov al,num
mov cx,0008h
loop1: rcl al,1
jb exit
inc bl
exit: loop loop1
.exit
End
