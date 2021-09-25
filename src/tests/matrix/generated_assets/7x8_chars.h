#ifndef _7X8_CHARS
#define _7X8_CHARS


    // A - Z
	#define _TILE_A { 0x08, 0x1C, 0x22, 0x22, 0x3E, 0x22, 0x22, 0x00 }
	#define _TILE_B { 0x3C, 0x12, 0x12, 0x1C, 0x12, 0x12, 0x3C, 0x00 }
	#define _TILE_C { 0x1C, 0x22, 0x20, 0x20, 0x20, 0x22, 0x1C, 0x00 }
	#define _TILE_D { 0x38, 0x24, 0x22, 0x22, 0x22, 0x24, 0x38, 0x00 }
	#define _TILE_E { 0x3E, 0x20, 0x20, 0x3C, 0x20, 0x20, 0x3E, 0x00 }
	#define _TILE_F { 0x3E, 0x20, 0x20, 0x3C, 0x20, 0x20, 0x20, 0x00 }
	#define _TILE_G { 0x1C, 0x20, 0x20, 0x2E, 0x22, 0x22, 0x1C, 0x00 }
	#define _TILE_H { 0x22, 0x22, 0x22, 0x3E, 0x22, 0x22, 0x22, 0x00 }
	#define _TILE_I { 0x1C, 0x08, 0x08, 0x08, 0x08, 0x08, 0x1C, 0x00 }
	#define _TILE_J { 0x0E, 0x04, 0x04, 0x04, 0x04, 0x24, 0x18, 0x00 }
	#define _TILE_K { 0x22, 0x24, 0x28, 0x30, 0x28, 0x24, 0x22, 0x00 }
	#define _TILE_L { 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x3E, 0x00 }
	#define _TILE_M { 0x22, 0x36, 0x2A, 0x2A, 0x22, 0x22, 0x22, 0x00 }
	#define _TILE_N { 0x22, 0x22, 0x32, 0x2A, 0x26, 0x22, 0x22, 0x00 }
	#define _TILE_O { 0x1C, 0x22, 0x22, 0x22, 0x22, 0x22, 0x1C, 0x00 }
	#define _TILE_P { 0x3C, 0x22, 0x22, 0x3C, 0x20, 0x20, 0x20, 0x00 }
	#define _TILE_Q { 0x1C, 0x22, 0x22, 0x22, 0x2A, 0x24, 0x1A, 0x00 }
	#define _TILE_R { 0x3C, 0x22, 0x22, 0x3C, 0x28, 0x24, 0x22, 0x00 }
	#define _TILE_S { 0x1C, 0x22, 0x20, 0x1C, 0x02, 0x22, 0x1C, 0x00 }
	#define _TILE_T { 0x3E, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x00 }
	#define _TILE_U { 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x1C, 0x00 }
	#define _TILE_V { 0x22, 0x22, 0x22, 0x14, 0x14, 0x08, 0x08, 0x00 }
	#define _TILE_W { 0x22, 0x22, 0x22, 0x2A, 0x2A, 0x36, 0x22, 0x00 }
	#define _TILE_X { 0x22, 0x22, 0x14, 0x08, 0x14, 0x22, 0x22, 0x00 }
	#define _TILE_Y { 0x22, 0x22, 0x14, 0x08, 0x08, 0x08, 0x08, 0x00 }
	#define _TILE_Z { 0x3E, 0x02, 0x04, 0x08, 0x10, 0x20, 0x3E, 0x00 }
    
    // 0 - 9
	#define _TILE_DIGIT_0 { 0x1C, 0x22, 0x26, 0x2A, 0x32, 0x22, 0x1C, 0x00 }
	#define _TILE_DIGIT_1 { 0x08, 0x18, 0x08, 0x08, 0x08, 0x08, 0x1C, 0x00 }
	#define _TILE_DIGIT_2 { 0x1C, 0x22, 0x22, 0x0C, 0x10, 0x20, 0x3E, 0x00 }
	#define _TILE_DIGIT_3 { 0x1C, 0x22, 0x02, 0x0C, 0x02, 0x22, 0x1C, 0x00 }
	#define _TILE_DIGIT_4 { 0x04, 0x0C, 0x14, 0x24, 0x3E, 0x04, 0x04, 0x00 }
	#define _TILE_DIGIT_5 { 0x3E, 0x30, 0x3C, 0x02, 0x02, 0x22, 0x1C, 0x00 }
	#define _TILE_DIGIT_6 { 0x0C, 0x10, 0x20, 0x3C, 0x22, 0x22, 0x1C, 0x00 }
	#define _TILE_DIGIT_7 { 0x3E, 0x02, 0x04, 0x08, 0x10, 0x10, 0x10, 0x00 }
	#define _TILE_DIGIT_8 { 0x1C, 0x22, 0x22, 0x1C, 0x22, 0x22, 0x1C, 0x00 }
	#define _TILE_DIGIT_9 { 0x1C, 0x22, 0x22, 0x1E, 0x02, 0x04, 0x08, 0x00 }



	#define _TILE_0_UDG     {12,18,12,51,45,12,18,51}
	#define _TILE_1_UDG     {12,30,12,51,45,12,18,51}
	#define _TILE_2_UDG     {12,22,12,62,13,12,20,20}
	#define _TILE_3_UDG     {12,26,12,31,44,12,10,10}

	#define _TILE_4_UDG     {12,30,63,45,30,12,30,51}
	#define _TILE_7_UDG     {30,33,51,33,33,18,18,12}
	#define _TILE_9_UDG     {33,18,12,26,22,12,18,33}
	#define _TILE_8_UDG     {0,30,51,55,51,26,18,12}
	#define _TILE_11_UDG    {0, 0, 4,28,14, 8, 0, 0}
	#define _TILE_5_UDG     {30,33,51,45,45,51,33,30}

	#define _TILE_6_UDG     {12,30,63,45,30,12,30,51}
	
	#define _TILE_16_UDG    {12,30,30,30,63,45,33,33}
	#define _TILE_14_UDG    {0, 0,56,31,31,56, 0, 0}
	#define _TILE_15_UDG    {0, 0, 7,62,62, 7, 0, 0}
	#define _TILE_10_UDG    {12,18,12,51, 0,12, 0,51}
	#define _TILE_12_UDG    {12,12,28,12,12,14,12,12}
	#define _TILE_13_UDG    {0, 0, 0,63,63,00,00,00}
	#define _TILE_17_UDG    {0,30,51,55,51,22,20,12}
	#define _TILE_18_UDG    {0,30,43,43,35,42,30,12}

	#define _TILE_19_UDG    {31,21,31,21,31,21,31,21}
	#define _TILE_20_UDG    {63,49,63,35,63,49,63,35}
	#define _TILE_21_UDG    {63,45,63,45,63,45,63,45}
	#define _TILE_22_UDG    {63,63,36,9,63,63,0,0}
	#define _TILE_23_UDG    {31,19,31,19,31,25,31,25}
	#define _TILE_24_UDG    {63,41,63,37,63,41,63,37}
	#define _TILE_25_UDG    {0,8, 31, 16, 30,  2,62,  4}
#endif // _7x8_CHARS