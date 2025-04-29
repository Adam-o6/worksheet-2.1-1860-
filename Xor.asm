// Load R0 into D
@R0
D = M

// Store original R0 in R3
@R3
M = D

// Load R1 into D
@R1
D = M

// Compute NOT R1 into R4
@R4
M = !D

// Load R3 into D
@R3
D = M

// R5 = R0 AND NOT R1
@R5
M = D & M

// Compute NOT R0 into D
@R3
D = M
@R6
M = !D

// Load R1 into D again
@R1
D = M

// R7 = NOT R0 AND R1
@R7
M = D & M

// XOR
@R5
D = M
@R7
D = D | M

// Store final result in R2
@R2
M = D
