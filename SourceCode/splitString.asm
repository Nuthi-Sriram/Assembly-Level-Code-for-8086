.model small
.stack
.data
str db "string$"   
strSplit db ?
len db 3h
.code 
.startup
mov si,offset str
mov cx,0
mov cl,len
loop:cmp [si],'$'
inc si
loop loop  
mov di, offset strSplit   
split:cmp [si],'$'      
jz exit      
mov al,[si]
mov [di],al
inc si   
inc di
jmp split        

exit:      
mov [di],'$'
.exit