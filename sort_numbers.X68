*------------------------------------------------
* Titulo : P1 (2024-2025) - Selection Sort
* Autores: Harol Mijael Jorge López y Alumno 2
*------------------------------------------------
    ORG $1000

N: EQU 6
V: DC.B 5,3,8,10,1,4
VIN: DS.B N
*--------------------------------------------

START:
    LEA V, A0
    CLR D0
    MOVEQ #N, D0
LOOP:
    MOVE.B (A0)+, D1
    MOVE.L A0, A1
    MOVE.B (A1)+, D2
LOOP_MIN:
    MOVE.L A1, A2
    MOVE.B (A1)+, D3
    CMP D3, D2
    BPL IS_LESS
    JMP LOOP_MIN
IS_LESS:
    MOVE.B (A2), D2
    JMP LOOP_MIN
    SUBQ #1, D0
    CMP #0, D0
    BNE LOOP
    

    SIMHALT             ; halt simulator

* Put variables and constants here

    END    START


*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
