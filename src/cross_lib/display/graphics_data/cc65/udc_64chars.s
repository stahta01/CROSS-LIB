		.segment "UDCCHAR"
		.export _Charset

_Charset:

;.byte $18,$ac,$d8,$2e,$19,$18,$28,$28, 
; inv .byte $18,$24,$00,$66,$99,$00,$24,$66
; right .byte $18,$35,$1b,$74,$98,$18,$14,$14,


; .byte $00,$00,$00,$00,$00,$00,$00,$00
;.byte $e7,$e7,$e7,$e7,$ff,$ff,$e7,$ff
;.byte $00,$00,$00,$00,$00,$00,$00,$00,$99,$99,$00,$99,$00,$99,$99,$ff
;.byte $e7,$c1,$9f,$c3,$f9,$83,$e7,$ff,$00,$00,$00,$00,$00,$00,$00,$00
;.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
;.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
;.byte $ff,$99,$c3,$00,$c3,$99,$ff,$ff,$ff,$e7,$e7,$81,$e7,$e7,$ff,$ff
;.byte $00,$00,$00,$00,$00,$00,$00,$00,$ff,$ff,$ff,$81,$ff,$ff,$ff,$ff
;.byte $ff,$ff,$ff,$ff,$ff,$e7,$e7,$ff,$00,$00,$00,$00,$00,$00,$00,$00
;.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
;.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
;.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
;.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
;.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
;.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
;.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
;.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00

; player up
.byte $18,$3c,$18,$66,$99,$18,$24,$66

.byte $18,$3c,$66,$7e,$66,$66,$66,$00
.byte $7c,$66,$66,$7c,$66,$66,$7c,$00,$3c,$66,$60,$60,$60,$66,$3c,$00
.byte $78,$6c,$66,$66,$66,$6c,$78,$00,$7e,$60,$60,$78,$60,$60,$7e,$00
.byte $7e,$60,$60,$78,$60,$60,$60,$00,$3c,$66,$60,$6e,$66,$66,$3c,$00
.byte $66,$66,$66,$7e,$66,$66,$66,$00,$3c,$18,$18,$18,$18,$18,$3c,$00
.byte $1e,$0c,$0c,$0c,$0c,$6c,$38,$00,$66,$6c,$78,$70,$78,$6c,$66,$00
.byte $60,$60,$60,$60,$60,$60,$7e,$00,$63,$77,$7f,$6b,$63,$63,$63,$00
.byte $66,$76,$7e,$7e,$6e,$66,$66,$00,$3c,$66,$66,$66,$66,$66,$3c,$00
.byte $7c,$66,$66,$7c,$60,$60,$60,$00,$3c,$66,$66,$66,$66,$3c,$0e,$00
.byte $7c,$66,$66,$7c,$78,$6c,$66,$00,$3c,$66,$60,$3c,$06,$66,$3c,$00
.byte $7e,$18,$18,$18,$18,$18,$18,$00,$66,$66,$66,$66,$66,$66,$3c,$00
.byte $66,$66,$66,$66,$66,$3c,$18,$00,$63,$63,$63,$6b,$7f,$77,$63,$00
.byte $66,$66,$3c,$18,$3c,$66,$66,$00,$66,$66,$66,$3c,$18,$18,$18,$00
.byte $7e,$06,$0c,$18,$30,$60,$7e,$00

; gun
.byte 0,128,126,200,248,192,128,  0

; pound - invincibility
.byte 24, 36, 24,  0,153,  0, 36,102

; powerup
.byte 0, 60, 54,223,231,122, 36, 24

; rocket
.byte $18,$3c,$3c,$3c,$7e,$7e,$5a,$42

; cbm left arrow - left missile
.byte 0,  0,240, 63, 63,240,  0,  0

; space
.byte $00,$00,$00,$00,$00,$00,$00,$00

; bullet
.byte 0,  0,  8, 56, 28, 16,  0,  0

; vertical
.byte 24, 24, 24, 48, 24, 12, 24, 24

; horizontal
.byte  0,  0,  0,255,  0,  0,  0,  0

; ghost
.byte $bd,$42,$a5,$81,$81,$99,$81,$7e

; skull
;  { 60, 66,165,129, 90, 36, 36, 60}
.byte 60, 66,165,129, 90, 36, 36, 60
;.byte $3c,$42,$a5,$a5,$42,$42,$66,$3c

; bomb
.byte $3c,$42,$a5,$99,$99,$a5,$42,$3c

; player down 
.byte $18,$24,$18,$66,$99,$18,$24,$66

; player left
.byte $18,$ac,$d8,$2e,$19,$18,$28,$28

; player right 
.byte $18,$35,$1b,$74,$98,$18,$14,$14

.byte $18,$3e,$60,$3c,$06,$7c,$18,$00,$00,$18,$18,$7e,$18,$18,$00,$00
.byte $00,$00,$00,$00,$00,$18,$18,$30,$00,$00,$00,$7e,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$18,$18,$00,$00,$03,$06,$0c,$18,$30,$60,$00
.byte $3c,$66,$6e,$76,$66,$66,$3c,$00,$18,$18,$38,$18,$18,$18,$7e,$00
.byte $3c,$66,$06,$0c,$30,$60,$7e,$00,$3c,$66,$06,$1c,$06,$66,$3c,$00
.byte $06,$0e,$1e,$66,$7f,$06,$06,$00,$7e,$60,$7c,$06,$06,$66,$3c,$00
.byte $3c,$66,$60,$7c,$66,$66,$3c,$00,$7e,$66,$0c,$18,$18,$18,$18,$00
.byte $3c,$66,$66,$3c,$66,$66,$3c,$00

; 
.byte $3c,$66,$66,$3e,$06,$66,$3c,$00

; :
;.byte $00,$00,$18,$00,$00,$18,$00,$ff
.byte $00,$00,$0f,$fe,$fe,$0f,$00,$00

.byte $00,$00,$18,$00,$00,$18,$18,$30

.byte $00,$00,$0f,$fe,$fe,$0f,$00,$00

.byte $00,$00,$7e,$00,$7e,$00,$00,$00

