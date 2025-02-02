  // i=x5 
   //j=x6 
   // sum=x7 →final out put 
   //x29= matrix dim=2 
  // x3= input for multipication 
 // x4 = input for multipication 
 //x31 = output for multipication 
 
                                           //→ هظفاح رد سیرتام یراذگ یاج 
addi sp, sp,400 
add x10, sp, x0 
 
addi x5, x0, 10 
sw x5, 0(x10) 
addi x10, x10, 4 
 
addi x5, x0, 2 
sw x5, 0(x10) 
addi x10, x10, 4 
 
addi x5, x0, 5 
sw x5, 0(x10) 
addi x10, x10, 4 
 
addi x5, x0, 8 
sw x5, 0(x10) 
 
addi x10, x10,-12       */ 
beq x0, x0, start   
Float mat:                       //اه رییغتم هیلوا یهد رادقم 
   addi x5, x0, 0              
   addi x6, x0, 0             
   addi x7, x0, 0             
   addi x29, x0, 2            */ 
 
   loop1: 
        bge x5, x29, exit                            //if i>=10 go to exit 
        loop2: 
             bge x6, x29, reset                     //if j>=10 then j=0 
       
             mulx3, x4:                        // x28= i*10 
                 add x3, x0, x5 
                 add x4, x0, x29 
                 jal x1, multiple 
                 add x28, x0, x31 
                 addi x31, x0, 0                      */ 
                                              
             add x28, x28, x6                       //x28= x28+j 
           slli x28, x28, 2                   // x28*4 
             add x28, x28, x10                    // x28= x28+ *arr 
             lw x30, 0(x28)                           //lw arr[i][j] 
             add x7, x7, x30                         //sum+= arr[i][j] 
 
           addi x6, x6, 1                       // j++ 
           beq x0, x0, loop2                 //repeat loop2 
reset: 
   addi x6, x0, 0                                 // j=0 
   addi x5, x5, 1                                      //i++ 
   beq x0, x0, loop1                             // repeat loop1 
 
multiple:                                                //store registers 
   addi sp , sp, -20 
   sw x7, 16(sp) 
   sw x8, 12(sp) 
   sw x9, 8(sp) 
   sw x10, 4(sp) 
   sw x11, 0(sp)                                    */ 
 
addi x10, x0, 16                                            // compute multiplication 
addi x7, x0, 1 
add x8, x0, x0 
beq x0, x0, Wexp 
 
Wloop: 
    and x9, x4, x7 
    beq x9, x7, Multi 
 Endif: 
    addi x8, x8, 1 
    slli x7, x7, 1 
    beq x0, x0, Wexp 
   Multi: 
      sll x11, x3, x8 
      add x31, x31, x11 
      beq x0, x0, Endif
Wexp: 
      blt x8, x10, Wloop                                  */ 
      lw x11, 0(sp)                                  //recover registers 
      lw x10, 4(sp) 
      lw x9, 8(sp) 
      lw x8, 12(sp) 
      lw x7, 16(sp) 
      addi sp, sp, 20                          */ 
 
      jalr x0, x1, 0 
 
start: 
    jal x1, Float mat 
exit: 