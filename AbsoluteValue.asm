// Load input value from R0 into D
@R0
D = M

// If D >= 0, jump to POSITIVE
@POSITIVE
D; JGE

// If D < 0, we might be dealing with the minimum possible value
@R2
M = 1

// Reload D with the value from R0
@R0
D = M

// Increment D twice to detect overflow
@MIN_VALUE
D = D + 1
@MIN_VALUE
D = D + 1

// If it overflows
@CANNOT_COMPUTE
D; JEQ

// Negate the value since it's not the minimum possible
@R0
D = M
D = -D

// Store result in R1
@R1
M = D

// Set R3 to 0
@R3
M = 0

// End of program
@END
0; JMP

// Positive Input
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

// Minimum Value
(CANNOT_COMPUTE)
@R3
M = 1        // Status = error

@R0
D = M

@R1
M = D        // Store original value in R1 anyway

@END
0; JMP

(END)
@END
