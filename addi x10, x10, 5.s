addi x10, x10, 5 
addi x11, x11, 0 
beq x0, x0, unsigned int gcd 
unsigned int gcd: 
    add x5, x10, x11          
    beq x5, x0, Case1        
    beq x11, x0, Case2      
    bne x10, x0, Case3      
    jalr x0, x1, 0               
Case1: 
    addi x11, x0, 1           
    jalr x0, 0(x1) 
Case2: 
    add x11, x10, x0               
    jalr x0, x1, 0 
Case3: 
      beq x0, x0, While           
   While: 
       beq x10, x11, Exit        
       bge x10, x11, Else        
       sub x11, x11, x10           
       beq x0, x0, While         
   Else: 
       sub x10, x10, x11         
       beq x0, x0, While        
   Exit: 
            jalr x0, x1, 0 
