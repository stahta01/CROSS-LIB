		.segment "UDCCHAR"
		.export _Charset

_Charset:

; 0xFE super
.byte 0,60,90,219,195,90,60,24

.byte 255,153,255,153,255,153,255,153

.byte 255,255,255,192,129,255,255,255

.byte 126,102,126,102,126,102,126,102

.byte 255,165,255,165,255,165,255,165

; A-Z
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
.byte 129,66,24,52,44,24,66,129

; pound - invincibility
.byte 24, 36, 24,  0,153,  0, 36,102

; powerup
.byte 24, 0, 24,0,153, 0, 36,0

; rocket
.byte 24, 60, 60, 60,126, 90, 66, 66

; cbm left arrow - left missile
.byte 0,  0,240, 63, 63,240,  0,  0

; space
.byte $00,$00,$00,$00,$00,$00,$00,$00

; bullet
.byte 0,  0,  8, 56, 28, 16,  0,  0

; vertical brick
.byte 24, 24, 24, 48, 24, 12, 24, 24

; horizontal brick
.byte  0,  0,  0,255,  0,  0,  0,  0

; ghost
.byte 153, 24, 36,102,0,0,0,0

; skull
.byte 0, 36, 0,102,0, 24, 0,102

; bomb
.byte 0,0,0,0,0,0,24, 36

; player down 
.byte 24, 36, 24,102,153, 24, 36,102

; player left
.byte 0,0,0,0,24, 36, 24,102

; player right 
.byte 36,102,0,0,0,0,0,0

; extraPoints
.byte $18,$3e,$60,$3c,$06,$7c,$18,$00

; player up
.byte 0,0,24, 36, 24,102,153, 24

; comma
.byte 24,102,153, 24, 36,102,0,0

; dash
.byte $00,$00,$00,$7e,$00,$00,$00,$00

; period
;.byte $00,$00,$00,$00,$00,$18,$18,$00
.byte 126,90,126,90,126,90,126,90

; slash
;.byte 0,0,0,0,0,0,0,0
.byte 0,0,0,0,0,170,255,255

.byte $3c,$66,$6e,$76,$66,$66,$3c,$00,$18,$18,$38,$18,$18,$18,$7e,$00
.byte $3c,$66,$06,$0c,$30,$60,$7e,$00,$3c,$66,$06,$1c,$06,$66,$3c,$00
.byte $06,$0e,$1e,$66,$7f,$06,$06,$00,$7e,$60,$7c,$06,$06,$66,$3c,$00
.byte $3c,$66,$60,$7c,$66,$66,$3c,$00,$7e,$66,$0c,$18,$18,$18,$18,$00
.byte $3c,$66,$66,$3c,$66,$66,$3c,$00

; 
.byte $3c,$66,$66,$3e,$06,$66,$3c,$00

; right missile
.byte 0,  0, 15,252,252, 15,  0,  0


; 0xFD freeze
.byte 0,60,66,207,195,102,36,24



; ------------------------------------------------------------------------
; Unused - Conflict?



