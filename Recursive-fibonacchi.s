addi x11, x0, 0      
addi x12, x0, 0         
addi x5, x0, 1                  
addi x10, x0,7               
addi sp, sp, 400          
beq x0, x0, End          
Int fib : 
    addi sp, sp, -4         
    sw x1, 0(sp) 
    blt x5, x10, L          
    beq x10, x5, 24              
    addi x12, x0, 0         
    lw x1, 0(sp) 
    addi sp, sp, 4 
    add x11, x11, x12 
    jalr x0, x1, 0 
 
    addi x12, x0, 1         
    lw x1, 0(sp) 
    addi sp, sp, 4 
    add x11, x11, x12 
    jalr x0, x1, 0 
L : 
       
    addi x10, x10, -1 
    addi sp, sp, -4 
    sw x10, 0(sp) 
  jal x1, Int fib 
    lw x10, 0(sp) 
    addi sp, sp, 4 
 
    addi x10, x10, -1      
    jal x1, Int fib 
      
      
    lw x1, 0(sp) 
    addi sp, sp, 4 
    jalr x0, x1, 0 
 
End: 
    Jal x1, Int fib 