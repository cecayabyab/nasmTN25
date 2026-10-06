section .data
    l1 db "                  _  ,.~~~.", 10
    l1_len equ $ - l1

    l2 db "                /  ,CCCCCCCCCCA.,~-,-", 10
    l2_len equ $ - l2

    l3 db "               (_ dCCCCCCCCCCCCCU'    '-", 10
    l3_len equ $ - l3

    l4 db "              / \dCCCCCCCCCCCCCC(      @|", 10
    l4_len equ $ - l4

    l5 db "             (  ,CCCCCCCCCCCC*''``-   ,CC0,ABB", 10
    l5_len equ $ - l5

    l6 db "              \ |CCCCCCCCCCV       `-dCCCCdBBB)                    -~-", 10
    l6_len equ $ - l6

    l7 db "             `(CCCCCCCCCCi        )CCC*dBBB*                       CCC.,.", 10
    l7_len equ $ - l7

    l8 db "               VCCCCCCCCCk-  @    dC*dBBBB*)                   _   `CCCYP", 10
    l8_len equ $ - l8

    l9 db "                `CCCCCCCCCkn. _ .d*dBBBB*)                    (CCn'CCCCC.", 10
    l9_len equ $ - l9

    l10 db "                 `CCCCCCCCCCCCCYdBBY*_)                       '*(CCCCCCCCccC.", 10
    l10_len equ $ - l10

    l11 db "                    ``YC\Am.dCCC*B*__)M.                         ,CCCCCCCCCC*'", 10
    l11_len equ $ - l11

    l12 db "                       .~~*``~dCCId*_)MMM\_                     ,CCCCCCCC*", 10
    l12_len equ $ - l12

    l13 db "                       `~- (C@C,CVVMMMMMMMM.~-)               ,CCCCCCCCCY", 10
    l13_len equ $ - l13

    l14 db "                          ``*~*cCA\VMMMMMMm*C/'(`-     _    ,cCCCCCCCCCY", 10
    l14_len equ $ - l14

    l15 db "                               `*Cc `*MMMM*cC0`.\  7.~'  `,~ndCCCCCCCCY", 10
    l15_len equ $ - l15

    l16 db "       (Cb.             `CCboQBB*'``~~| /.               YCCCCCCCCCCCC'", 10
    l16_len equ $ - l16

    l17 db "        VCb.            `VBBB*'   \        `,             YCCCCCCCCCC'", 10
    l17_len equ $ - l17

    l18 db "  _  .~`*CCb_            `*        *         `,           ?CCCCCCCC'", 10
    l18_len equ $ - l18

    l19 db "(CCCCKC.C~CCCb         _ |       ,'            `.         VCCCCCP", 10
    l19_len equ $ - l19

    l20 db " **YCVCCA*CC~C)     ,''-     `~.~'              ~* ~**CC'", 10
    l20_len equ $ - l20

    l21 db "    Yb**CCCCCPcc. _ .. >        '-                   '  -", 10
    l21_len equ $ - l21

    l22 db "    *CCCCCCCCCCCCCCCCCCCb       \                        `-   ___", 10
    l22_len equ $ - l22

    l23 db "        >CCCCCCCCCCCCCCCC.      |                       .~*dDDDDDDDbn.", 10
    l23_len equ $ - l23

    l24 db "        `VCCCCCCCCCCCCCCCC      |                    .~dDDDDDDDDDDDDDDDb.", 10
    l24_len equ $ - l24

    l25 db "          `CCCCCCCCCCCCCCC)     /                  .dDDDDDDDDDDDDDDDDDDDDb.", 10
    l25_len equ $ - l25

    l26 db "            `*CCCCCCCCCCCC|    '                  .DDDDDDDDDDDDDDDDDDDDDDDD.", 10
    l26_len equ $ - l26

    l27 db "                `**CCCCCC*'- '                   dDDDDDDDDDDDDDDDDDDDDDDDDDD", 10
    l27_len equ $ - l27

    l28 db "                       `*''\                    dDDDDDDDDDDDDDDDDDDDDDDDDDDD.", 10
    l28_len equ $ - l28

    l29 db "                           |                   dDDDDDDDDDDDDDDDDDDDDDDDDDDDDD)", 10
    l29_len equ $ - l29
    
    l30 db "                       ,.-_\                  dDDDDDDDDDDDDDD,DDDDDDDDDDDDDD|", 10
    l30_len equ $ - l30

    l31 db "                       AVDDD.                .DDDDDDDDDDDDDDD  ADDDDDDDDDDDD", 10
    l31_len equ $ - l31

    l32 db "                       Co`DDb            ,~adDDDDDDDDDDDDDDD  ADDDDDDDDDDDDV", 10
    l32_len equ $ - l32

    l33 db "                       V!!o'Db  __--~~aadDDDDDDDDDDDDDDDDDD* .D.`VDDDDDDDDD'", 10
    l33_len equ $ - l33

    l34 db "                       '!!!!o`*D:DDDDDDDDDDDDDDDDDDDDDDDDD*   CDDDb.`VDDDDDDV", 10
    l34_len equ $ - l34

    l35 db "                        '!!!!!!!oo'DDDDDDDDDDDDDDDDDDDDDD*   AVA*0DDbnn...n'|", 10
    l35_len equ $ - l35

    l36 db "                         '!!!!!!!!!!o*0DDDDDDDDDDDDDDP*     (MAVAVan**DDDDDV", 10
    l36_len equ $ - l36

    l37 db "                           `+!!!*nADD)DDDn.**+++**.dDV       V*VAVAVAVAVAV,", 10
    l37_len equ $ - l37

    l38 db "                             nADDDDP*/DDDDDDDDDDDDDDD'        *VAVAVAVAVAV.", 10
    l38_len equ $ - l38

    l39 db "                             DD*.ndDV ADDDDDDDDDDDDDP          VAVAVAVAVV", 10
    l39_len equ $ - l39

    l40 db "                             VDDDDDV ADDDDDDDDDDDDDD'          VAVAVAVAV/", 10
    l40_len equ $ - l40

    l41 db "                              VDDDD*DDDDDDDDDDDDDDD/           \VAVAVAVV", 10
    l41_len equ $ - l41

    l42 db "                              `DDDDDDDDDDDDDDDDDDD              VAVAVAV'", 10
    l42_len equ $ - l42

    l43 db "                               `DDDDDDDDDDDDDDDDP                `*AV*", 10
    l43_len equ $ - l43

    l44 db "                                 *DDDDDDDDDDDDD*", 10
    l44_len equ $ - l44

    l45 db "                                   *DDDDDDDD*'", 10
    l45_len equ $ - l45

    l46 db "                                     `**''", 10
    l46_len equ $ - l46
section .text
    global _start


_start:

    mov ecx, l1
    mov edx, l1_len
    call printString

    mov ecx, l2
    mov edx, l2_len
    call printString

    mov ecx, l3
    mov edx, l3_len
    call printString

    mov ecx, l4
    mov edx, l4_len
    call printString

    mov ecx, l5
    mov edx, l5_len
    call printString

    mov ecx, l6
    mov edx, l6_len
    call printString

    mov ecx, l7
    mov edx, l7_len
    call printString

    mov ecx, l8
    mov edx, l8_len
    call printString

    mov ecx, l9
    mov edx, l9_len
    call printString

    mov ecx, l10
    mov edx, l10_len
    call printString

    mov ecx, l11
    mov edx, l11_len
    call printString

    mov ecx, l12
    mov edx, l12_len
    call printString

    mov ecx, l13
    mov edx, l13_len
    call printString

    mov ecx, l14
    mov edx, l14_len
    call printString
    
    mov ecx, l15
    mov edx, l15_len
    call printString

    mov ecx, l16
    mov edx, l16_len
    call printString

    mov ecx, l17
    mov edx, l17_len
    call printString

    mov ecx, l18
    mov edx, l18_len
    call printString

    mov ecx, l19
    mov edx, l19_len
    call printString

    mov ecx, l20
    mov edx, l20_len
    call printString

    mov ecx, l21
    mov edx, l21_len
    call printString

    mov ecx, l22
    mov edx, l22_len
    call printString

    mov ecx, l23
    mov edx, l23_len
    call printString

    mov ecx, l24
    mov edx, l24_len
    call printString

    mov ecx, l25
    mov edx, l25_len
    call printString

    mov ecx, l26
    mov edx, l26_len
    call printString

    mov ecx, l27
    mov edx, l27_len
    call printString

    mov ecx, l28
    mov edx, l28_len
    call printString

    mov ecx, l29
    mov edx, l29_len
    call printString

    mov ecx, l30
    mov edx, l30_len
    call printString

    mov ecx, l31
    mov edx, l31_len
    call printString

    mov ecx, l32
    mov edx, l32_len
    call printString

    mov ecx, l33
    mov edx, l33_len
    call printString

    mov ecx, l34
    mov edx, l34_len
    call printString

    mov ecx, l35
    mov edx, l35_len
    call printString

    mov ecx, l36
    mov edx, l36_len
    call printString

    mov ecx, l37
    mov edx, l37_len
    call printString

    mov ecx, l38
    mov edx, l38_len
    call printString

    mov ecx, l39
    mov edx, l39_len
    call printString

    mov ecx, l40
    mov edx, l40_len
    call printString

    mov ecx, l41
    mov edx, l41_len
    call printString

    mov ecx, l42
    mov edx, l42_len
    call printString

    mov ecx, l43
    mov edx, l43_len
    call printString

    mov ecx, l44
    mov edx, l44_len
    call printString

    mov ecx, l45
    mov edx, l45_len
    call printString

    mov ecx, l46
    mov edx, l46_len
    call printString

call ExitProgram

printString:
 
    mov eax, 4          ; sys_write
    mov ebx, 1          ; stdout
    int 0x80
 
    ret

ExitProgram:

    mov eax, 1
    mov ebx, 0
    int 0x80