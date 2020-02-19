.model small
.stack
.data
str db "malayalam$"
.code
.startup  
mov si, offset str
replace:cmp [si], '$'
jz exit
cmp [si],'a'
jz change
inc si
change:mov [si],'z'
inc si
jmp replace
exit:
.exit
end