addi x10, x0, 10 
addi x11, x0, 8 
addi sp, sp, 400 
beq x0, x0, Start 
Int f1: 
    add x6, x10, x11         
    sub x7, x10, x11          
    add x12, x6, x7           
    addi x5, x0, 0              
 
       addi x2, x2, -4                 
       sw x1, 0(x2)                     
 Forloop: 
       bge x5, x10, Exit              
       add x14, x11, x5               
       jal x1, intf2                       
       add x12, x12, x15            
       addi x5, x5, 1                   
       beq x0, x0, Forloop        
 
intf2: 
   addi x13, x14, 5                
   add x15, x13, x14              
   jalr x0, x1, 0 
Exit: 
   lw x1, 0(x2)                      
   addi x2, x2, 4                    
   jalr x0, x1, 0   
Start: 
   jal x1, Int f1 