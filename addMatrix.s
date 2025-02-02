Float mat: 
   addi x5, x0, 0             // i=0 
   addi x6, x0, 0            //j=0 
   addi x7, x0, 0            // sum=0 
   addi x11, x0, 0          // mean=0 
   addi x29, x0, 10          //x29=10 
 
   loop1: 
          bge x5, x29, exit           //if i>=10 go to exit 
        loop2: 
          bge x6, x29, reset       //if j>=10 then j=0 
 
             mul x28, x5, x29         // x28= i*10 
             add x28, x28, x6            //x28= x28+j 
             slli x28, x28, 2              // x28*4 
             add x28, x28, x10         // x28= x28+ *arr  
             lw x30, 0(x28)              //lw arr[i][j] 
             add x7, x7, x30             //sum+= arr[i][j] 
 
             addi x6, x6, 1               // j++ 
             beq x0, x0, loop2         //repeat loop2 
 
reset: 
   addi x6, x0, 0             // j=0 
   addi x5, x5, 1               //i++ 
   beq x0, x0, loop1        // repeat loop1 
 
exit: 
    addi x29, x29, 90           //x29=100 
    div x11, x7, x29             //mean= sum/100 