// Да се напише подпрограма, която да обръща огледално битовете на двойната
// дума в регистри R1:R0.

.global bitrev64
bitrev64:
        MOV     R2,#32
while:
        MOVS    R0,R0,LSL#1
        MOVS    R1,R1,RRX
        ADC     R0,#0
        SUB     R2,#1
        CMP     R2,#0
        BNE     while
        BX      LR


