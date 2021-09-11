		.segment "UDCCHAR"
		.export _Charset

_Charset:

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
.byte 37,37,37,37,37,37,50,0

; pound - invincibility
.byte 66,66,90,126,60,60,60,24

; powerup
.byte 255,255,255,192,129,255,255,255

; rocket
.byte $b3,$aa,$aa,$b3,$aa,$aa,$ab,$00

; cbm left arrow - left missile
.byte $db,$92,$92,$d2,$52,$52,$db,$00

; space
.byte $00,$00,$00,$00,$00,$00,$00,$00

; bullet
.byte 126,102,126,102,126,102,126,102

; vertical brick
.byte 0,0,0,0,66,66,90,126

; horizontal brick
.byte  60,60,60,24,0,0,0,0

; ghost
.byte 126,90,126,90,126,90,126,90

; skull
.byte 255,153,255,153,255,153,255,153

; bomb
.byte 126,102,126,102,126,102,126,102

; player down 
.byte 0,0,12,6,7,3,0,0

; player left
.byte 192,96,48,24,255,255,24,48

; player right 
.byte 0,0,0,128,254,255,128,0

; extraPoints
;.byte $18,$3e,$60,$3c,$06,$7c,$18,$00
.byte $18,$3e,$60,$3c,$06,$7c,$18,$00

; player up
.byte 12,6,195,97,127,63,1,3

; comma
.byte $54,$54,$54,$74,$54,$54,$54,$00

; dash
.byte $00,$00,$00,$7e,$00,$00,$00,$00

; period
;.byte $00,$00,$00,$00,$00,$18,$18,$00
.byte 255,255,0,48,48,0,255,255

; slash
;.byte 0,0,0,0,0,0,0,0
.byte 255,255,0,48,48,0,255,255

.byte $3c,$66,$6e,$76,$66,$66,$3c,$00,$18,$18,$38,$18,$18,$18,$7e,$00
.byte $3c,$66,$06,$0c,$30,$60,$7e,$00,$3c,$66,$06,$1c,$06,$66,$3c,$00
.byte $06,$0e,$1e,$66,$7f,$06,$06,$00,$7e,$60,$7c,$06,$06,$66,$3c,$00
.byte $3c,$66,$60,$7c,$66,$66,$3c,$00,$7e,$66,$0c,$18,$18,$18,$18,$00
.byte $3c,$66,$66,$3c,$66,$66,$3c,$00

; 
.byte $3c,$66,$66,$3e,$06,$66,$3c,$00

; right missile
.byte 255,165,255,165,255,165,255,165



; ------------------------------------------------------------------------
; Unused - Conflict if put at the end of the unexpanded Commodore 16 ram memory 

.byte 255,255,0,48,48,0,255,255

.byte 255,255,0,48,48,0,255,255

.byte 255,255,0,48,48,0,255,255

