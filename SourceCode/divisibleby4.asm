.model small
.stack
.data
num db 44h
dv db ?     
.code
.startup
mov al,num
and al,11
jnz set
mov dv,0ffh
.exit 
set:mov dv,00h
.exit
end