.model small
.stack 
.data   
.code
.startup
;mov ax,5h
;mov bl,2h
;div bl
 
mov dx, WORD PTR 244h
mov ax, WORD PTR 259h
mov bl,8h 
div bl
                                
end
