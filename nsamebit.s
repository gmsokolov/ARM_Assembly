// Да се напише подпрограма, която да връща в регистър R0 броя на съвпадащите
// битове на една и съща позиция в думите, подадени в регистри R0, R1 и R2.
.global nsamebit
nsamebit:
        EOR     R1,R1,R0
        EOR     R2,R2,R0
        ORR     R1,R1,R2
        MOV     R2,#32
        MOV     R0,#0
while:
        MOVS    R1,R1,LSR#1
        ADDCC   R0,#1
        SUB     R2,#1
        CMP     R2,#0
        BNE     while
        BX      LR

