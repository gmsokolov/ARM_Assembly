// Да се напише подпрограма, която да връща в регистър R0 индекса на подадената
// пак там дума в сортирания във възходящ ред масив от думи със знак с начален
// адрес и брой елементи съответно в регистри R1 и R2, а ако не е намерена, -1.

.global binsrch
binsrch:
        STMFD   SP!,{R4-R6,LR}
        MOV     R3,#0
        SUB     R4,R2,#1
l1:
        CMP     R3,R4
        BGT     l2
        ADD     R5,R4,R3
        MOV     R5,R5,LSR#1
        LDR     R6,[R1,R5,LSL#2]
        CMP     R6,R0
        BLT     l3
        BNE     l4
        MOV     R0,R5
l5:
        LDMFD   SP!,{R4-R6,PC}
l2:
        MOV     R0,#-1
        BAL     l5
l3:
        ADD     R3,R5,#1
        BAL     l1
l4:
        SUB     R4,R5,#1
        BAL     l1
