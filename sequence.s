// Да се напише подпрограма, която да записва в масив от думи с начален адрес
// в регистър R0 първите 6 числа от редицата на Силвестър, първото от които е
// 2, а всяко следващо е равно на произведението на всички предидущи плюс 1.

.global sequence
sequence:
        MOV     R3,#6
        MOV     R2,#1
        MOV     R1,#1
while:
        MUL     R2,R1
        MOV     R1,R2
        ADD     R2,#1
        STR     R2,[R0],#4
        SUB     R3,#1
        CMP     R3,#0
        BNE     while
        BX      LR

