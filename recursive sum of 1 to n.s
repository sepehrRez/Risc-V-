addi x10, x0, 7                 // x10-> nth 
addi sp , sp, 400 
beq x0, x0, End                       //start computing sum function 
 
F: 
    addi sp, sp, -8                     //adjust stack for two elements 
    sw x1, 4(sp)                        // store return address 
    sw x10, 0(sp)                     //store n on stack 
 
    addi x5, x10, -1               //x5=n-- 
    bge x5, x0, L                    // if (n-1)>=0 go to L, else n==0 so load previos n from stack 
    addi sp , sp, 8                   
    jalr x0, x1, 0 
    
 
L:                        // n -=1 then store  on stack 
    addi x10, x10, -1              //n-=1 
    jal x1, F                             // store n-- on stack 
 
    addi x6, x10, 0               // store x10 on temp regisster x6 
    lw x10, 0(sp)                  // load previos x10 and return add from stack 
    lw x1, 4(sp) 
    addi sp, sp, 8 
 
    add x10, x10, x6             //x10= sum of previos and present value  x10 
    jalr x0, x1, 0 
End: 
    jal x1, F