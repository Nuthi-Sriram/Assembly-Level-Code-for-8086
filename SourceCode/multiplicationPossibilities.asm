.model small
.stack 
.data   
num db 2h 
num1 dw 241h
.code
.startup
;mov bx,3h
;mov al,12h
;mul bx

;mov ax,120h
;mov cx,500h
;mul cx

;lea si,num
;mov al,6h
;mul BYTE PTR [si]

;lea bx,num1
;mov ax,6h
;mul WORD PTR [bx]
                                
end
