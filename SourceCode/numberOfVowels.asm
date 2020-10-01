;to find number of vowels
.model small
.stack
.data
vow db 0h
 str1 db 16 ?
 
.code
.startup
 lea dx,str1
 mov ah,0ah
 int 21h
 mov ax,0
 mov al,str1[1]
 mov si,ax
 add si,2
 mov di,2
 loop1:
   cmp di,si
   jnc exit1
     mov bh,str1[di]
     cmp bh,'a'
     jne e
     inc vow
     jmp n
     e:
     cmp bh,'e'
     jne i
     inc vow
     jmp n
     i:
     cmp bh,'i'
     jne o
     inc vow
     jmp n
     o:
     cmp bh,'o'
     jne u
     inc vow
     jmp n
     u:
     cmp bh,'u'
     jne n
     inc vow
     n:
     inc di
     jmp loop1
exit1:
mov al,vow
aaa
mov bx,ax
add bx,3030h
mov dl,bh
mov ah,02h
int 21h
mov dl,bl
mov ah,02h
int 21h
end
