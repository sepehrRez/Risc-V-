addi x10, x0, 400                        
addi x5, x0, 97 
sw x5, 0(x10) 
addi x5, x0, 98 
addi x10, x10, 4 
sw x5, 0(x10) 
addi x5, x0, 99 
addi x10, x10, 4 
sw x5, 0(x10) 
addi x5, x0, 98 
addi x10, x10, 4 
sw x5, 0(x10) 
addi x5, x0, 97 
addi x10, x10, 4 
sw x5, 0(x10)                                  
addi x10, x0, 400     //x10=starst array address                          
addi x11, x0, 16       //x11= end array address 
addi x9, x0, 0 
add x11, x11, x10      
palindrom: 
beq x11, x10, Equal               
lw x8, 0(x10)                      
lw x6, 0(x11)                       
bne x6, x8, Nequal           
addi x10, x10, 4                     
addi x11, x11, -4                  
beq x0, x0, palindrom 
Equal: 
addi x9, x0, 1 
Nequal:                        

 
