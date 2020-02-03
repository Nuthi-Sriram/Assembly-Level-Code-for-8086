.model small
.stack
.data 
n db -5 
.code
.startup 
mov dx,0  
mov al,n
rcl al,1
jb set
mov dl,00h    
.exit 

set:mov dl,01h
.exit
end