.model small 
.data
str1 db "Enter first number: $"
str2 db 13,10,"The number is: $"
.code
main proc
    mov ax,@data
    mov ds,ax  
    
    lea dx,str1
    mov ah,9
    int 21h 
    
    mov ah,1
    int 21h
    mov bl,al 
    
    lea dx,str2
    mov ah,9
    int 21h  
    
    
    mov dl,bl
    mov ah,2
    int 21h 
    
    mov ah,4Ch
    int 21h
main endp
end