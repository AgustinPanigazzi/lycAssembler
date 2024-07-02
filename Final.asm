include macros2.asm
include number.asm

.MODEL LARGE
.386
.STACK 200h

MAXTEXTSIZE equ 40

.DATA

    x   dd  ?
    z   dd  ?
    a   dd  ?
    b   dd  ?
    c   dd  ?
    var_entera  dd  ?
    variable1   dd  ?
    var_flotante    dd  ?
    y   db  MAXTEXTSIZE dup (?),'$'
    p1  db  MAXTEXTSIZE dup (?),'$'
    var_cadena  db  MAXTEXTSIZE dup (?),'$'
    _cte_23 dd  23.0
    @auxAsigNum dd  ?
    _cte_neg15_6    dd  -15.6
    _cte_0_6    dd  0.6
    _cte_5_0    dd  5.0
    _cte_hola   db  "hola",'$', 36 dup (?)
    @auxAsigString  db  MAXTEXTSIZE dup (?),'$'
    _cte_2  dd  2.0
    _cte_1  dd  1.0
    _cte_3  dd  3.0
    _cte_10 dd  10.0
    _cte_42 dd  42.0
    _cte_Pepe   db  "Pepe",'$', 36 dup (?)
    _cte_pepito db  "pepito",'$', 34 dup (?)
    _cte_123    dd  123.0
    _cte_a_es_mas_grande_que_b  db  "a es mas grande que b",'$', 19 dup (?)
    _cte_50 dd  50.0
    _cte_0  dd  0.0
    _cte_a_es_igual_a_50_y_b_es_igual_a_0   db  "a es igual a 50 y b es igual a 0",'$', 8 dup (?)
    _cte_200    dd  200.0
    _cte_1000   dd  1000.0
    _cte_b_es_igual_a_200   db  "b es igual a 200",'$', 24 dup (?)
    _cte_hola_Mundo db  "hola Mundo",'$', 30 dup (?)
    _cte_neg53  dd  -53.0
    _cte_11 dd  11.0
    @auxCP  dd  0.0
    _cte_8  dd  8.0
    _cte_55 dd  55.0
    _cte_7  dd  7.0
    @auxAssembler12 dd  ?
    @auxAssembler11 dd  ?
    @auxAssembler10 dd  ?
    @auxAssembler9  dd  ?
    @auxAssembler8  dd  ?
    @auxAssembler7  dd  ?
    @auxAssembler6  dd  ?
    @auxAssembler5  dd  ?
    @auxAssembler4  dd  ?
    @auxAssembler3  dd  ?
    @auxAssembler2  dd  ?
    @auxAssembler1  dd  ?
    @auxAssembler0  dd  ?

    .CODE
.startup

START:


    FLD _cte_23
    FSTP @auxAsigNum
    FLD @auxAsigNum
    FSTP x
    FLD _cte_neg15_6
    FSTP @auxAsigNum
    FLD @auxAsigNum
    FSTP variable1
    FLD _cte_0_6
    FSTP @auxAsigNum
    FLD @auxAsigNum
    FSTP variable1
    FLD _cte_5_0
    FSTP @auxAsigNum
    FLD @auxAsigNum
    FSTP variable1
    MOV SI, OFFSET _cte_hola
    MOV DI, OFFSET @auxAsigString
    CALL COPIAR
    MOV SI, OFFSET @auxAsigString
    MOV DI, OFFSET y
    CALL COPIAR
    FLD _cte_2
    FLD _cte_1
    FMUL
    FSTP @auxAssembler0
    FLD @auxAssembler0
    FLD _cte_3
    FADD
    FSTP @auxAssembler1
    FLD @auxAssembler1
    FSTP @auxAsigNum
    FLD @auxAsigNum
    FSTP a
    FLD @auxAsigNum
    FSTP x
    FLD @auxAsigNum
    FSTP z
    FLD x
    FCOMP _cte_10
    FSTSW AX
    SAHF
    JGE ET_59
    FLD _cte_23
    FSTP @auxAsigNum
    FLD @auxAsigNum
    FSTP x
    JMP ET_65
ET_59:
    FLD _cte_42
    FSTP @auxAsigNum
    FLD @auxAsigNum
    FSTP x
ET_65:
    FLD x
    FCOMP _cte_10
    FSTSW AX
    SAHF
    JLE ET_83
    FLD x
    FCOMP _cte_23
    FSTSW AX
    SAHF
    JGE ET_83
    FLD _cte_23
    FSTP @auxAsigNum
    FLD @auxAsigNum
    FSTP x
    JMP ET_89
ET_83:
    FLD _cte_42
    FSTP @auxAsigNum
    FLD @auxAsigNum
    FSTP x
ET_89:
    FLD b
    FCOMP a
    FSTSW AX
    SAHF
    JL ET_99
    FLD x
    FCOMP z
    FSTSW AX
    SAHF
    JLE ET_103
ET_99:
    displayString _cte_Pepe
    newLine
    JMP ET_109
ET_103:
    MOV SI, OFFSET _cte_pepito
    MOV DI, OFFSET @auxAsigString
    CALL COPIAR
    MOV SI, OFFSET @auxAsigString
    MOV DI, OFFSET y
    CALL COPIAR
ET_109:
    FLD z
    FCOMP _cte_123
    FSTSW AX
    SAHF
    JLE ET_127
    FLD x
    FCOMP _cte_2
    FSTSW AX
    SAHF
    JL ET_127
    FLD _cte_23
    FSTP @auxAsigNum
    FLD @auxAsigNum
    FSTP x
ET_125:
ET_127:
    FLD a
    FCOMP b
    FSTSW AX
    SAHF
    JLE ET_143
    displayString _cte_a_es_mas_grande_que_b
    newLine
    FLD a
    FLD _cte_1
    FADD
    FSTP @auxAssembler2
    FLD @auxAssembler2
    FSTP @auxAsigNum
    FLD @auxAsigNum
    FSTP a
    JMP ET_125
ET_143:
    FLD z
    FCOMP _cte_23
    FSTSW AX
    SAHF
    JE ET_166
ET_148:
    FLD z
    FCOMP _cte_23
    FSTSW AX
    SAHF
    JE ET_164
    FLD z
    FLD _cte_1
    FADD
    FSTP @auxAssembler3
    FLD @auxAssembler3
    FSTP @auxAsigNum
    FLD @auxAsigNum
    FSTP z
    JMP ET_148
ET_164:
ET_166:
    FLD a
    FCOMP b
    FSTSW AX
    SAHF
    JLE ET_196
ET_170:
    FLD b
    FCOMP _cte_10
    FSTSW AX
    SAHF
    JG ET_186
    FLD b
    FLD _cte_1
    FADD
    FSTP @auxAssembler4
    FLD @auxAssembler4
    FSTP @auxAsigNum
    FLD @auxAsigNum
    FSTP b
    JMP ET_170
ET_186:
    FLD a
    FLD _cte_1
    FADD
    FSTP @auxAssembler5
    FLD @auxAssembler5
    FSTP @auxAsigNum
    FLD @auxAsigNum
    FSTP a
    JMP ET_164
ET_196:
    FLD a
    FCOMP b
    FSTSW AX
    SAHF
    JGE ET_239
    FLD a
    FCOMP _cte_50
    FSTSW AX
    SAHF
    JE ET_223
    FLD _cte_50
    FSTP @auxAsigNum
    FLD @auxAsigNum
    FSTP a
    FLD _cte_0
    FSTP @auxAsigNum
    FLD @auxAsigNum
    FSTP b
    displayString _cte_a_es_igual_a_50_y_b_es_igual_a_0
    newLine
    JMP ET_237
ET_223:
    FLD _cte_200
    FSTP @auxAsigNum
    FLD @auxAsigNum
    FSTP b
    FLD _cte_1000
    FSTP @auxAsigNum
    FLD @auxAsigNum
    FSTP a
    displayString _cte_b_es_igual_a_200
    newLine
ET_237:
    JMP ET_196
ET_239:
    FLD x
    FCOMP a
    FSTSW AX
    SAHF
    JNE ET_250
    FLD b
    FCOMP _cte_200
    FSTSW AX
    SAHF
    JNE ET_262
ET_250:
    displayString _cte_hola_Mundo
    newLine
    FLD b
    FLD _cte_1
    FADD
    FSTP @auxAssembler6
    FLD @auxAssembler6
    FSTP @auxAsigNum
    FLD @auxAsigNum
    FSTP b
    JMP ET_239
ET_262:
    FLD x
    FCOMP z
    FSTSW AX
    SAHF
    JE ET_309
    FLD z
    FCOMP x
    FSTSW AX
    SAHF
    JGE ET_291
ET_273:
    FLD z
    FCOMP x
    FSTSW AX
    SAHF
    JGE ET_289
    FLD z
    FLD _cte_1
    FADD
    FSTP @auxAssembler7
    FLD @auxAssembler7
    FSTP @auxAsigNum
    FLD @auxAsigNum
    FSTP z
    JMP ET_273
ET_289:
    JMP ET_307
ET_291:
    FLD z
    FCOMP x
    FSTSW AX
    SAHF
    JLE ET_307
    FLD x
    FLD _cte_1
    FADD
    FSTP @auxAssembler8
    FLD @auxAssembler8
    FSTP @auxAsigNum
    FLD @auxAsigNum
    FSTP x
    JMP ET_291
ET_307:
    JMP ET_262
ET_309:
    getString p1
    newLine
    FLD _cte_0
    FSTP @auxAsigNum
    FLD @auxAsigNum
    FSTP x
    FLD @auxAsigNum
    FSTP z
    FLD _cte_2
    FSTP @auxAsigNum
    FLD @auxAsigNum
    FSTP b
    FLD @auxAsigNum
    FSTP a
    FLD _cte_neg53
    FSTP @auxAsigNum
    FLD @auxAsigNum
    FSTP c
    MOV EAX, _cte_11
    CALL ES_PRIMO
    FLD b
    FLD _cte_8
    FADD
    FSTP @auxAssembler9
    MOV EAX, @auxAssembler9
    CALL ES_PRIMO
    MOV EAX, _cte_2
    CALL ES_PRIMO
    MOV EAX, _cte_55
    CALL ES_PRIMO
    FLD z
    FLD b
    FMUL
    FSTP @auxAssembler10
    FLD @auxAssembler10
    FLD _cte_7
    FADD
    FSTP @auxAssembler11
    MOV EAX, @auxAssembler11
    CALL ES_PRIMO
    MOV EAX, c
    CALL ES_PRIMO
    FLD @auxCP
    FSTP x
    FLDZ
    FSTP @auxCP
    FLD _cte_0
    FSTP @auxAsigNum
    FLD @auxAsigNum
    FSTP x
ET_362:
    FLD _cte_11
    FCOMP x
    FSTSW AX
    SAHF
    JG ET_375
    FLD _cte_3
    FLD x
    FADD
    FSTP @auxAssembler12
    FLD @auxAssembler12
    FSTP x
    JMP ET_362
ET_375:
    MOV AX, 4C00h
    INT 21h



STRLEN PROC NEAR
    mov bx, 0
STRL01:
    cmp BYTE PTR [SI+BX],'$'
    je STREND
    inc BX
    jmp STRL01
STREND:
    ret
STRLEN ENDP

COPIAR PROC NEAR
    call STRLEN
    cmp bx,MAXTEXTSIZE
    jle COPIARSIZEOK
    mov bx,MAXTEXTSIZE
COPIARSIZEOK:
    mov cx,bx
    cld
    rep movsb
    mov al,'$'
    mov BYTE PTR [DI],al
    ret
COPIAR ENDP

ES_PRIMO PROC NEAR
    cmp eax, 2
    jb CASO_NO_PRIMO
    je CASO_PRIMO
    mov ebx, eax
    mov ecx, 2
CHEQUEAR_DIVISOR:
    mov eax, ecx
    mul ecx
    cmp eax, ebx
    ja CASO_PRIMO
    mov eax, ebx
    xor edx, edx
    div ecx
    cmp edx, 0
    je CASO_NO_PRIMO
    inc ecx
    jmp CHEQUEAR_DIVISOR
CASO_NO_PRIMO:
    ret
CASO_PRIMO:
    fld @auxCP
    fld1
    fadd
    fstp @auxCP
    ret
ES_PRIMO endp

END START
