#ifndef _TILES_H
#define _TILES_H

#  if defined(__C64__)
	#include "c64_memory_mapped_settings.h"
#elif defined(QUAD_MEMORY_MAPPED)
    #include "default_quad_graphics_settings.h"
#elif defined(__CREATIVISION__) && defined(CREATIVISION_COLOR) && !defined(_XL_NO_UDG)
    #include "vdp_mode1_settings.h"
#elif defined(__TI99__) && !defined(_XL_NO_UDG)
    #include "vdp_mode1_settings.h"
#elif defined(__CREATIVISION__) && !defined(_XL_NO_UDG)
    #include "creativision_settings.h"
#elif defined(__VIC20__) && defined(VIC20_EXP_3K) && !!defined(_XL_NO_UDG)
	#include "vic20_exp_3k_settings.h"
#elif defined(__VIC20__) && defined(VIC20_EXP_3K) && !defined(_XL_NO_UDG)
	#include "vic20_exp_3k_light_settings.h"
#elif defined(__VIC20__) && defined(__MEMORY_MAPPED_GRAPHICS) && (defined(VIC20_EXP_8K) || defined(VIC20_EXP_3K)) && !defined(_XL_NO_UDG)
	#include "vic20_rom_chars_and_27_tiles_settings.h"
#elif defined(__VIC20__) && defined(VIC20_UNEXPANDED) && !defined(_XL_NO_UDG)
	#include "vic20_rom_chars_and_6_tiles_settings.h"
#elif defined(__VIC20__) && defined(__CONIO_GRAPHICS)
	#include "vic20_exp_16k_v2_settings.h"
#elif defined(__C16__) && !defined(_XL_NO_UDG) && !defined(__MEMORY_MAPPED_GRAPHICS)
	#include "c264_redefined_chars_settings.h"
#elif defined(__C16__) && !defined(_XL_NO_UDG)
	#include "c264_link_time_redefined_chars_settings.h"
#elif defined(__CBM__) && defined(__MEMORY_MAPPED_GRAPHICS)
	#include "petscii_memory_mapped_settings.h"
#elif defined(__MO5__) || defined(__TO7__) || ( (defined(__COCO__) || defined(__DRAGON__)) && (defined(BIT_MAPPED) || defined(__BIT_MAPPED_4_GRAPHICS)))
	#include "udg_settings.h"
#elif (defined(__COCO__) || defined(__DRAGON__)) && defined(__MEMORY_MAPPED_GRAPHICS)
	#include "cmoc_memory_mapped_settings.h"
#elif (defined(__ATARI__) && defined(ATARI_MODE1))
	#include "atari_mode1_redefined_chars_settings.h"
#elif defined(__ATARI5200__)
	#include "atari_mode1_redefined_chars_settings.h"
#elif defined(__ATMOS__) && !defined(NO_UDG)
	#include "atmos_redefined_characters_settings.h"
#elif defined(Z88DK_SPRITES) 
	#include "udg_settings.h"
#elif defined(__MSX__) && defined(__MEMORY_MAPPED_GRAPHICS)
	#include "msx_redefined_chars_settings.h"
#elif defined(CPCRSLIB)
	#include "cpc_cpcrslib_settings.h"
#elif defined(__REX__)
	#include "cpc_cpcrslib_settings.h"
#elif defined(__SUPERVISION__)
	#include "supervision_settings.h"
#elif defined(__NES__) && defined(__CONIO_GRAPHICS)
	#include "nes_settings.h"
#elif defined(__NES__) && defined(NES_CONIO)
	#include "nes_conio_settings.h"
#elif defined(__CIDELSA__) && !!defined(_XL_NO_UDG)
    #include "cidelsa_no_gfx.h"
#elif defined(COMX_COLOR) && !defined(__MICRO__)
	#include "comx_color_settings.h"
#elif defined(__COMX__) || defined(__PECOM__) || ((defined(__CIDELSA__) && !defined(_XL_NO_UDG)))
    #include "comx_settings.h"
#elif defined(__MICRO__)
	// #include "micro_settings.h"
#elif defined(__ATARI_LYNX__) && defined(TGI_GFX)
    #include "tgi_gfx_settings.h"
#elif defined(__Z88DK__) && !defined(_XL_NO_UDG)
	#include "udg_settings.h"
#elif defined(__PCE__) || ( defined(__GAMATE__) && !defined(_XL_NO_UDG))
	#include "pce_settings.h"
#elif (defined(__APPLE2__)||defined(__APPLE2ENH__))&&defined(APPLE2_HGR)
    #include "apple2_hgr_settings.h"
#else
	#include "default_image_settings.h"
#endif 


#endif // _TILES_H

