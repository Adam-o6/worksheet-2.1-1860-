// Save original R0 into D
@R0
D = M

// Save original R1 into R5
@R1
M = M
@R5
M = M

// Compute (NOT R0) AND R1 then store in R3
@R0
D = M
D = !D
@R1
D = D & M
@R3
M = D

// Compute R0 AND (NOT R1) then store in R4
@R5
D = M
D = !D
@R0
D = D & M
@R4
M = D

// Now compute R3 OR R4 to final XOR
@R3
D = M
@R4
D = D | M

// Store the XOR result in R2
@R2
M = D
