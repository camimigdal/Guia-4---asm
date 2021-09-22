section .data                  
  msg: DB 10, 'H', 10, 'o', 10, 'l', 10, 'a', 10, 10, 'p', 10, 'e', 10, 'p', 10, 'e'    
  largo EQU $ - msg            
                               
  global _start                
section .text                  
  _start:                      
    mov rax, 4     ; funcion 4 
    mov rbx, 1     ; stdout    
    mov rcx, msg   ; mensaje   
    mov rdx, largo ; longitud  
    int 0x80                   
    mov rax, 1     ; funcion 1 
    mov rbx, 0     ; codigo    
    int 0x80                   
               
              

