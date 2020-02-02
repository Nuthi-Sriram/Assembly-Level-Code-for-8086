;Code credits @Potti Priya

.model small
.stack
.data
num db 2,-5,7,9,1
n db 5
.code
.startup
mov cx,0
mov bl,n
dec bl
mov cl,bl

outer:
mov ax,si
add ax,1
mov di,ax
mov cl,n
dec cl
sub cx, si

inner:
mov dh, num[si]
mov dl, num[di]
cmp dh,dl
jg next   
mov num[si], dl
mov num[di], dh
next: inc di
loop inner

mov cl,bl
dec bl
inc si
loop outer
end