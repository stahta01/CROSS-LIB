* 6809 assembly program generated by cmoc 0.1.56


	SECTION	code


_udgs	EXPORT


	ENDSECTION




	SECTION	rodata


string_literals_start	EQU	*
string_literals_end	EQU	*


*******************************************************************************

* READ0ONLY GLOBAL VARIABLES


	ENDSECTION




	SECTION	rwdata


* Globals with static initializers
_udgs	EQU	*		udgs: uint8_t[]



	FCB %00000000
	FCB %00000000
	FCB %00000000
	FCB %00000000
	FCB %00000000
	FCB %00000000
	FCB %00000000
	FCB %00000000

; invincibility
    FCB 24 
    FCB  36 
    FCB  24 
    FCB   0 
    FCB 153 
    FCB   0 
    FCB  36 
    FCB 102


; left missile
    FCB 0 
    FCB   0 
    FCB 240 
    FCB  63 
    FCB  63 
    FCB 240 
    FCB   0 
    FCB   0


; bullet
    FCB 0 
    FCB   0 
    FCB   8 
    FCB  56 
    FCB  28 
    FCB  16 
    FCB   0 
    FCB   0


; dollar $
    FCB $18 
    FCB $3e 
    FCB $60 
    FCB $3c 
    FCB $06 
    FCB $7c 
    FCB $18 
    FCB $00


; power-up F
    FCB 0 
    FCB 60 
    FCB 66 
    FCB 207 
    FCB 195 
    FCB 102 
    FCB 36 
    FCB 24


; vertical brick
    FCB 24 
    FCB  24 
    FCB  24 
    FCB  48 
    FCB  24 
    FCB  12 
    FCB  24 
    FCB  24


; skull
    FCB 60 
    FCB  66 
    FCB 165 
    FCB 129 
    FCB  90 
    FCB  36 
    FCB  36 
    FCB  60


; ghost
    FCB 60 
    FCB 126 
    FCB 255 
    FCB 153 
    FCB 126 
    FCB 60 
    FCB 126 
    FCB 219


; bomb
    FCB 60 
    FCB  66 
    FCB 165 
    FCB 153 
    FCB 153 
    FCB 165 
    FCB  66 
    FCB  60


; player down
    FCB 24 
    FCB  36 
    FCB  24 
    FCB 102 
    FCB 153 
    FCB  24 
    FCB  36 
    FCB 102


; horizontal brick
    FCB 0 
    FCB   0 
    FCB   0 
    FCB 255 
    FCB   0 
    FCB   0 
    FCB   0 
    FCB   0


; power-up S
    FCB 0 
    FCB  60 
    FCB  102 
    FCB 223 
    FCB 231 
    FCB 122 
    FCB  36 
    FCB  24


	FCB %00000000
	FCB %00000000
	FCB %00000000
	FCB %00000000
	FCB %00111110
	FCB %00000000
	FCB %00000000
	FCB %00000000

; right missile
    FCB 0 
    FCB   0 
    FCB  15 
    FCB 252 
    FCB 252 
    FCB  15 
    FCB   0 
    FCB   0


; rocket
    FCB 24 
    FCB  60 
    FCB  60 
    FCB  60 
    FCB 126 
    FCB  90 
    FCB  66 
    FCB  66


	FCB %00000000 ; 
	FCB %00111100 ;  ####
	FCB %01000110 ; #   ## 
	FCB %01001010 ; #  # # 
	FCB %01010010 ; # #  # 
	FCB %01100010 ; ##   #
	FCB %00111100 ;  ####
	FCB %00000000

    FCB 126 
    FCB 90 
    FCB 126 
    FCB 90 
    FCB 126 
    FCB 90 
    FCB 126 
    FCB 90

    FCB 0 
    FCB 0 
    FCB 0 
    FCB 0 
    FCB 0 
    FCB 170 
    FCB 255 
    FCB 255

    FCB 255 
    FCB 153 
    FCB 255 
    FCB 153 
    FCB 255 
    FCB 153 
    FCB 255 
    FCB 153

    FCB 255 
    FCB 255 
    FCB 255 
    FCB 192 
    FCB 129 
    FCB 255 
    FCB 255 
    FCB 255

    FCB 126 
    FCB 102 
    FCB 126 
    FCB 102 
    FCB 126 
    FCB 102 
    FCB 126 
    FCB 102

    FCB 255 
    FCB 165 
    FCB 255 
    FCB 165 
    FCB 255 
    FCB 165 
    FCB 255 
    FCB 165


	FCB %00000000
	FCB %01111110
	FCB %00000010
	FCB %00000100
	FCB %00001000
	FCB %00010000
	FCB %00010000
	FCB %00000000

	FCB %00000000
	FCB %00111100
	FCB %01000010
	FCB %00111100
	FCB %01000010
	FCB %01000010
	FCB %00111100
	FCB %00000000

	FCB %00000000
	FCB %00111100
	FCB %01000010
	FCB %01000010
	FCB %00111110
	FCB %00000010
	FCB %00111100
	FCB %00000000

; dead ghost
    FCB 189 
    FCB 126 
    FCB 255 
    FCB 153 
    FCB 126 
    FCB 60 
    FCB 126 
    FCB 219


; power-up H
    FCB 0 
    FCB 60 
    FCB 90 
    FCB 219 
    FCB 195 
    FCB 90 
    FCB 60 
    FCB 24


; player up
    FCB 24 
    FCB  60 
    FCB  24 
    FCB 102 
    FCB 153 
    FCB  24 
    FCB  36 
    FCB 102


; player right
    FCB 24 
    FCB  52 
    FCB  25 
    FCB 118 
    FCB 152 
    FCB  24 
    FCB  20 
    FCB  20


; player left
    FCB 24 
    FCB  44 
    FCB 152 
    FCB 110 
    FCB  25 
    FCB  24 
    FCB  40 
    FCB  40


; gun
    FCB 129 
    FCB 66 
    FCB 24 
    FCB 52 
    FCB 44 
    FCB 24 
    FCB 66 
    FCB 129






	ENDSECTION




	SECTION	bss


* Uninitialized globals
bss_start	EQU	*
bss_end	EQU	*


	ENDSECTION




	SECTION	code




	ENDSECTION




	SECTION	initgl




*******************************************************************************

* Initialize global variables.


	ENDSECTION




*******************************************************************************

* Importing 0 utility routine(s).


*******************************************************************************

	END





