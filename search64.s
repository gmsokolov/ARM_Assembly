// Да се напише подпрограма, която да връща в регистър R0 индекса на подадената
// в регистри R1:R0 двойна дума в масива от двойни думи (LE) с начален адрес в
// регистър R3 и брой елементи в регистър R2, или -1, ако не е намерена.
.global search64
search64:
        STMFD   SP!,{R4-R6,LR}
        MOV     R4,#-1
l1:
        ADD     R4,#1
        LDMIA   R3!,{R5,R6}
        CMP     R0,R5
        BNE     l2
        CMP     R1,R6
        BEQ     l3
l2:
        SUB     R2,#1
        CMP     R2,#0
        BNE     l1
        MOV     R4,#-1
l3:
        MOV     R0,R4
        LDMFD   SP!,{R4-R6,PC}