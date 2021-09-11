;----------------------------------------------------------------------------
; VGA font for the PC-Engine conio implementation

        .export _pce_font

; The character tiles use only two colors from each pallette.  Color zero
; comes from pallette zero; color one is different in each pallette.  The
; color of a character is set by choosing one of the 16 pallettes.

.rodata

_pce_font:
.byte   $00, $00, $00, $00, $00, $00, $00, $00

.byte 60,60,60,24,0,0,0,0

.byte 0,0,0,0,66,66,90,126

; down
.byte 0,0,12,6,7,3,0,0

; up
.byte 12,6,195,97,127,63,1,3

; right
.byte 0,0,0,128,254,255,128,0 

; left
.byte 192,96,48,24,255,255,24,48	 

; bomb
.byte 126,102,126,102,126,102,126,102

; skull
.byte 255,153,255,153,255,153,255,153

; ghost
.byte 126,90,126,90,126,90,126,90

; unused gun
.byte $00,$80,$7e,$c8,$f8,$c0,$80,$00

; power-up S
.byte 255,255,255,192,129,255,255,255

; power-up F
.byte 0,0,0,0,224,240,0,0

; unused power-up H
.byte $00,$3c,$5a,$db,$c3,$5A,$3c,$18

; gun
.byte 37,37,37,37,37,37,50,0

; power-up H 
.byte 0,0,0,0,0,170,255,255

; bullet
.byte 126,102,126,102,126,102,126,102

.byte 66,66,90,126,60,60,60,24

; rocket
.byte  $b3,$aa,$aa,$b3,$aa,$aa,$ab,$00

; left missile
.byte $db,$92,$92,$d2,$52,$52,$db,$00

; right missile
.byte 255,165,255,165,255,165,255,165

; dead ghost
.byte $54,$54,$54,$74,$54,$54,$54,$00

.byte 255,255,0,48,48,0,255,255

.byte 255,255,0,48,48,0,255,255

.byte 255,255,0,48,48,0,255,255

.byte 255,255,0,48,48,0,255,255

.byte 255,255,0,48,48,0,255,255

.byte 255,255,0,48,48,0,255,255

;.byte   $00, $00, $C0, $C0, $C0, $FE, $00, $00
.byte $18,$3e,$60,$3c,$06,$7c,$18,$00

.byte   $00, $24, $66, $FF, $66, $24, $00, $00
.byte   $00, $18, $3C, $7E, $FF, $FF, $00, $00
.byte   $00, $FF, $FF, $7E, $3C, $18, $00, $00
.byte   $00, $00, $00, $00, $00, $00, $00, $00
.byte   $30, $78, $78, $78, $30, $00, $30, $00
.byte   $6C, $6C, $6C, $00, $00, $00, $00, $00
.byte   $6C, $6C, $FE, $6C, $FE, $6C, $6C, $00
.byte   $30, $7C, $C0, $78, $0C, $F8, $30, $00
.byte   $00, $C6, $CC, $18, $30, $66, $C6, $00
.byte   $38, $6C, $38, $76, $DC, $CC, $76, $00
.byte   $60, $60, $C0, $00, $00, $00, $00, $00
.byte   $18, $30, $60, $60, $60, $30, $18, $00
.byte   $60, $30, $18, $18, $18, $30, $60, $00
.byte   $00, $66, $3C, $FF, $3C, $66, $00, $00
.byte   $00, $30, $30, $FC, $30, $30, $00, $00
.byte   $00, $00, $00, $00, $00, $30, $30, $60
.byte   $00, $00, $00, $FC, $00, $00, $00, $00
.byte   $00, $00, $00, $00, $00, $30, $30, $00
.byte   $06, $0C, $18, $30, $60, $C0, $80, $00
.byte   $7C, $C6, $CE, $DE, $F6, $E6, $7C, $00
.byte   $30, $70, $30, $30, $30, $30, $FC, $00
.byte   $78, $CC, $0C, $38, $60, $CC, $FC, $00
.byte   $78, $CC, $0C, $38, $0C, $CC, $78, $00
.byte   $1C, $3C, $6C, $CC, $FE, $0C, $1E, $00
.byte   $FC, $C0, $F8, $0C, $0C, $CC, $78, $00
.byte   $38, $60, $C0, $F8, $CC, $CC, $78, $00
.byte   $FC, $CC, $0C, $18, $30, $30, $30, $00
.byte   $78, $CC, $CC, $78, $CC, $CC, $78, $00
.byte   $78, $CC, $CC, $7C, $0C, $18, $70, $00
.byte   $00, $30, $30, $00, $00, $30, $30, $00
.byte   $00, $30, $30, $00, $00, $30, $30, $60
.byte   $18, $30, $60, $C0, $60, $30, $18, $00
.byte   $00, $00, $FC, $00, $00, $FC, $00, $00
.byte   $60, $30, $18, $0C, $18, $30, $60, $00
.byte   $78, $CC, $0C, $18, $30, $00, $30, $00
.byte   $7C, $C6, $DE, $DE, $DE, $C0, $78, $00
.byte   $30, $78, $CC, $CC, $FC, $CC, $CC, $00
.byte   $FC, $66, $66, $7C, $66, $66, $FC, $00
.byte   $3C, $66, $C0, $C0, $C0, $66, $3C, $00
.byte   $F8, $6C, $66, $66, $66, $6C, $F8, $00
.byte   $7E, $60, $60, $78, $60, $60, $7E, $00
.byte   $7E, $60, $60, $78, $60, $60, $60, $00
.byte   $3C, $66, $C0, $C0, $CE, $66, $3E, $00
.byte   $CC, $CC, $CC, $FC, $CC, $CC, $CC, $00
.byte   $78, $30, $30, $30, $30, $30, $78, $00
.byte   $1E, $0C, $0C, $0C, $CC, $CC, $78, $00
.byte   $E6, $66, $6C, $78, $6C, $66, $E6, $00
.byte   $60, $60, $60, $60, $60, $60, $7E, $00
.byte   $C6, $EE, $FE, $FE, $D6, $C6, $C6, $00
.byte   $C6, $E6, $F6, $DE, $CE, $C6, $C6, $00
.byte   $38, $6C, $C6, $C6, $C6, $6C, $38, $00
.byte   $FC, $66, $66, $7C, $60, $60, $F0, $00
.byte   $78, $CC, $CC, $CC, $DC, $78, $1C, $00
.byte   $FC, $66, $66, $7C, $6C, $66, $E6, $00
.byte   $78, $CC, $E0, $70, $1C, $CC, $78, $00
.byte   $FC, $30, $30, $30, $30, $30, $30, $00
.byte   $CC, $CC, $CC, $CC, $CC, $CC, $FC, $00
.byte   $CC, $CC, $CC, $CC, $CC, $78, $30, $00
.byte   $C6, $C6, $C6, $D6, $FE, $EE, $C6, $00
.byte   $C6, $C6, $6C, $38, $38, $6C, $C6, $00
.byte   $CC, $CC, $CC, $78, $30, $30, $78, $00
.byte   $FE, $06, $0C, $18, $30, $60, $FE, $00
.byte   $78, $60, $60, $60, $60, $60, $78, $00
.byte   $C0, $60, $30, $18, $0C, $06, $02, $00
.byte   $78, $18, $18, $18, $18, $18, $78, $00
.byte   $10, $38, $6C, $C6, $00, $00, $00, $00
.byte   $00, $00, $00, $00, $00, $00, $00, $FF
.byte   $30, $30, $18, $00, $00, $00, $00, $00
.byte   $00, $00, $78, $0C, $7C, $CC, $76, $00
.byte   $E0, $60, $60, $7C, $66, $66, $DC, $00
.byte   $00, $00, $78, $CC, $C0, $CC, $78, $00
.byte   $1C, $0C, $0C, $7C, $CC, $CC, $76, $00
.byte   $00, $00, $78, $CC, $FC, $C0, $78, $00
.byte   $38, $6C, $60, $F0, $60, $60, $F0, $00
.byte   $00, $00, $76, $CC, $CC, $7C, $0C, $F8
.byte   $E0, $60, $6C, $76, $66, $66, $E6, $00
.byte   $30, $00, $70, $30, $30, $30, $78, $00
.byte   $0C, $00, $0C, $0C, $0C, $CC, $CC, $78
.byte   $E0, $60, $66, $6C, $78, $6C, $E6, $00
.byte   $70, $30, $30, $30, $30, $30, $78, $00
.byte   $00, $00, $CC, $FE, $FE, $D6, $C6, $00
.byte   $00, $00, $F8, $CC, $CC, $CC, $CC, $00
.byte   $00, $00, $78, $CC, $CC, $CC, $78, $00
.byte   $00, $00, $DC, $66, $66, $7C, $60, $F0
.byte   $00, $00, $76, $CC, $CC, $7C, $0C, $1E
.byte   $00, $00, $DC, $76, $66, $60, $F0, $00
.byte   $00, $00, $7C, $C0, $78, $0C, $F8, $00
.byte   $10, $30, $7C, $30, $30, $34, $18, $00
.byte   $00, $00, $CC, $CC, $CC, $CC, $76, $00
.byte   $00, $00, $CC, $CC, $CC, $78, $30, $00
.byte   $00, $00, $C6, $D6, $FE, $FE, $6C, $00
.byte   $00, $00, $C6, $6C, $38, $6C, $C6, $00
.byte   $00, $00, $CC, $CC, $CC, $7C, $0C, $F8
.byte   $00, $00, $FC, $98, $30, $64, $FC, $00
.byte   $1C, $30, $30, $E0, $30, $30, $1C, $00
.byte   $18, $18, $18, $00, $18, $18, $18, $00
.byte   $E0, $30, $30, $1C, $30, $30, $E0, $00
.byte   $76, $DC, $00, $00, $00, $00, $00, $00
.byte   $00, $10, $38, $6C, $C6, $C6, $FE, $00

