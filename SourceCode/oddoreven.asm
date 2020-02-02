.model small
.stack
.data
num db 01h  
odd db ?
.code
.startup
mov al,num
and al,01h
jnz set
mov odd,00h    
.exit 
set:mov odd,01h
.exit
end