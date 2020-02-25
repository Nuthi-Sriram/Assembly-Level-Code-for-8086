.MODEL small
.STACK
.DATA 
palindrome db 01h  
str db "abba$"
.CODE
.STARTUP
mov palindrome, 02h
mov si,offset str   
len1:cmp [si],'$'  
jz compute
inc si
jmp len1
compute:
mov di,offset str    
dec si
comp:cmp [di],'$'
jz out2
mov al,[si]
cmp al,[di]
jnz out1
inc di
dec si
jmp comp
out1: mov palindrome, 00h 
.exit

out2: mov palindrome, 01h



end