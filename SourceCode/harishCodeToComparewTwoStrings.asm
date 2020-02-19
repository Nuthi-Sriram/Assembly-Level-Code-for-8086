;Code credits R Harish 

.MODEL small
.STACK
.DATA
strlen1 db 0h 
equal db 0h  
strlen2 db 0h  
tempo db ?
str1 db "amriia#"
str2 db "amrita$"
.CODE
.STARTUP
mov equal,2h
mov dx,0
mov si,offset str1
len1:
cmp [si],"$"
jz len2
inc si
inc strlen1
loop len1
len2:
mov si,offset str2    
check2:
cmp [si],"$"
jz compare
inc si
inc strlen2
loop check2

compare:
mov cl,strlen1
mov ah,strlen2 
cmp cl,ah
jnz exit1
mov cx,0
mov cl,strlen1
mov si,offset str1
mov di,offset str2
cmpcmp:
 
mov dx,[di]
cmp [si],dx
jnz exit1
inc si
inc di
loop cmpcmp
mov equal,1h 

exit1:
.exit

end