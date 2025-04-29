@R0
    D = M         
    @POSITIVE
    D; JGE        
    @R2
    M = 1        
    @R0
    D = M       
    @MIN_VALUE
    D = D + 1   
    @MIN_VALUE
    D = D + 1   
    @CANNOT_COMPUTE
    D; JEQ        

    @R0
    D = M         
    D = -D         
    @R1
    M = D         
    @R3
    M = 0          
    @END
    0; JMP         

(POSITIVE)
    @R2
    M = 0         
    @R0
    D = M         
    @R1
    M = D          
    @R3
    M = 0         
    @END
    0; JMP        

(CANNOT_COMPUTE)
    @R3
    M = 1          
    @R0
    D = M         
    @R1
    M = D          
    @END
    0; JMP         

(END)
    @END