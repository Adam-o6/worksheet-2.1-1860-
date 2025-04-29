// Load R0 into D
@R0
D = M

// If D >= 0, jump to POSITIVE
@POSITIVE
D; JGE

// Set R2 = 1
@R2
M = 1

// Reload R0 into D
@R0
D = M

// Try detecting MIN_VALUE by adding 2
@MIN_VALUE
D = D + 1
@MIN_VALUE
D = D + 1

// If D == 0, can't compute (MIN_VALUE)
@CANNOT_COMPUTE
D; JEQ

// Otherwise, negate R0
@R0
D = M
D = -D

// Store result in R1
@R1
M = D

// Set R3 = 0
@R3
M = 0

// End
@END
0; JMP

(POSITIVE)

// Set R2 = 0
@R2
M = 0

// Copy R0 to R1
@R0
D = M
@R1
M = D

// Set R3 = 0
@R3
M = 0

// End
@END
0; JMP

(CANNOT_COMPUTE)

// Set R3 = 1
@R3
M = 1

// Copy R0 to R1
@R0
D = M
@R1
M = D

// End
@END
0; JMP

(END)
@END

