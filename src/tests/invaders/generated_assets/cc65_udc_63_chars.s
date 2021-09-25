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
.byte 8,18,250,238,254,252,8,4

; cbm left arrow - left missile
.byte 128,0,128,192,224,160,160,0

; space
.byte $00,$00,$00,$00,$00,$00,$00,$00

; bullet
.byte 32,17,63,110,255,191,160,27

; vertical brick
.byte 15,127,255,230,255,25,54,192

; horizontal brick
.byte  0,224,240,112,240,128,192,48

; ghost
.byte 64,224,224,252,254,254,254,254

; skull
.byte 0,7,15,14,15,3,6,3

; bomb
.byte 1,3,7,13,15,2,5,10

; player down 
.byte 1,3,3,31,63,63,63,63

; player left
.byte 64,224,224,252,254,254,254,254

; player right 
.byte 0,0,0,7,15,15,15,15

; extraPoints
;.byte $18,$3e,$60,$3c,$06,$7c,$18,$00
.byte $18,$3e,$60,$3c,$06,$7c,$18,$00

; player up
.byte 0,128,128,240,248,248,248,248

; comma
.byte 128,192,224,176,240,64,160,80

; dash
.byte $00,$00,$00,$7e,$00,$00,$00,$00

; period
;.byte $00,$00,$00,$00,$00,$18,$18,$00
.byte 0,0,0,1,3,3,3,3

; slash
;.byte 0,0,0,0,0,0,0,0
.byte 16,56,56,255,255,255,255,255

.byte $3c,$66,$6e,$76,$66,$66,$3c,$00,$18,$18,$38,$18,$18,$18,$7e,$00
.byte $3c,$66,$06,$0c,$30,$60,$7e,$00,$3c,$66,$06,$1c,$06,$66,$3c,$00
.byte $06,$0e,$1e,$66,$7f,$06,$06,$00,$7e,$60,$7c,$06,$06,$66,$3c,$00
.byte $3c,$66,$60,$7c,$66,$66,$3c,$00,$7e,$66,$0c,$18,$18,$18,$18,$00
.byte $3c,$66,$66,$3c,$66,$66,$3c,$00

; 
.byte $3c,$66,$66,$3e,$06,$66,$3c,$00

; right missile
.byte 2,9,11,14,15,7,2,4



; ------------------------------------------------------------------------
; Unused - Conflict if put at the end of the unexpanded Commodore 16 ram memory 

.byte 0,0,0,0,128,128,128,128

.byte 4,14,14,127,255,255,255,255

.byte 0,0,0,192,224,224,224,224

