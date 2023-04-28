// Да се напише подпрограма, която да сортира във възходящ ред по метода на
// вмъкването масив от думи със знак с начален адрес в регистър R0 и брой
// елементи (поне 2) в регистър R1.
.global inssort
inssort:
        STMFD   SP!,{R4,R5,LR}
        MOV     R2,#0
L1:     CMP     R2,R1
        BCS     L4
        MOV     R3,R2
L2:     SUBS    R3,#1
        BCC     L3
        LDR     R4,[R0,R3,LSL#2]
        ADD     R3,#1
        LDR     R5,[R0,R3,LSL#2]
        CMP     R5,R4
        BGE     L3
        STR     R4,[R0,R3,LSL#2]
        SUB     R3,#1
        STR     R5,[R0,R3,LSL#2]
        BAL     L2
L3:     ADD     R2,#1
        BAL     L1
L4:     LDMFD   SP!,{R4,R5,PC}
