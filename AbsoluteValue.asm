// Copy R0 to R1
@R0
D = M
@R1
M = D

// Check if x is negative using sign bit
// Load R0 and AND with 0x8000
@R0
D = M
@SIGN_CHECK
@32768      // 0x8000
D = D & A   // D = R0 & 0x8000
@NEGATIVE
D; JNE

// positive
@R2
M = 0       // Set R2 = 0
@R3
M = 0       // Set R3 = 0
@END
0; JMP

// negative
(NEGATIVE)
@R2
M = 1       // Set R2 = 1

// Check if x == -32768
@R0
D = M
@CHECK_MIN
@MINVALUE
D = D - A   // D = R0 - MINVALUE
@IS_MIN
D; JEQ

// negative and not -32768
@R0
D = M
D = -D
@R1
M = D       // Store absolute value in R1
@R3
M = 0
@END
0; JMP

// MIN VALUE
(IS_MIN)
@R3
M = 1

@END
0; JMP

// END
(END)
@END
0; JMP

// CONSTANTS
(MINVALUE)   // -32768 = 0x8000
@32768
