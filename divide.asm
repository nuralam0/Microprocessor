.model small
.data
n1 dw 20d
n2 db 5d
msg3 db "Questiont is:$"
msg4 db 10d,"Remainder is:$"
que db 0
rem db 0
.code 

mov ax,@data
mov ds,ax
mov ax,n1
mov bl,n2
div bl
mov que,al
mov rem,ah
mov ah,09h
mov dx,offset msg3
int 21h
mov dl,que
add dl,48d
mov ah,2
int 21h
mov ah,09h
mov dx,offset msg4
int 21h
mov dl,rem
add dl,48d
mov ah,2
int 21h

mov ah,4ch
int 21h
end