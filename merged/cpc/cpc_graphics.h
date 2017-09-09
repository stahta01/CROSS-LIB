/*****************************************************************************/
/*                                                                           */
/*                                		                                     */
/*                                                                           */
/*                                                                           */
/*                                                                           */
/*                                                                           */
/*                                                                           */
/* (C) 2017      Fabrizio Caruso                                  		     */
/*                					                                         */
/*              				                                             */
/* EMail:        Fabrizio_Caruso@hotmail.com                                 */
/*                                                                           */
/*                                                                           */
/* This software is provided 'as-is', without any expressed or implied       */
/* warranty.  In no event will the authors be held liable for any damages    */
/* arising from the use of this software.                                    */
/*                                                                           */
/* Permission is granted to anyone to use this software for any purpose,     */
/* including commercial applications, and to alter it and redistribute it    */
/* freely, subject to the following restrictions:                            */
/*                                                                           */
/* 1. The origin of this software must not be misrepresented; you must not   */
/*    claim that you wrote the original software. If you use this software   */
/*    in a product, an acknowledgment in the product documentation would be  */
/*    appreciated but is not required.                                       */
/* 2. Altered source versions must be plainly marked as such, and must not   */
/*    be misrepresented as being the original software.                      */
/* 3. This notice may not be removed or altered from any source              */
/*    distribution.                                                          */
/*                                                                           */
/*****************************************************************************/
 
//#include <peekpoke.h>
#include "display_macros.h"

#include <stdio.h>
#include <conio.h>

#define _DRAW 	cputc(image->_imageData);
#define _DELETE cputc(' '); 

extern unsigned char XSize;

#define CPC_BLUE 2
#define CPC_RED 4
#define CPC_YELLOW 0
#define CPC_CYAN 3

void INIT_GRAPHICS(void)
{
}

void INIT_IMAGES(void)
{		
	PLAYER_IMAGE._color = CPC_YELLOW;
	INVINCIBLE_GHOST_IMAGE._color = CPC_YELLOW;
	POWERUP_IMAGE._color = CPC_YELLOW;
	GUN_IMAGE._color = CPC_YELLOW;
	BOMB_IMAGE._color = CPC_RED;
	DEAD_GHOST_IMAGE._color = CPC_RED;
		
	GHOST_IMAGE._imageData = 'o';
	INVINCIBLE_GHOST_IMAGE._imageData = '+';
	BOMB_IMAGE._imageData = 'X';
	PLAYER_IMAGE._imageData = '*';
	POWERUP_IMAGE._imageData = 'S';
	GUN_IMAGE._imageData = '!';
	MISSILE_IMAGE._imageData = '.';
	
	#if defined(CPC_NO_COLOR)
		DEAD_GHOST_IMAGE._imageData = 'O';
	#else
		DEAD_GHOST_IMAGE._imageData = GHOST_IMAGE;
	#endif

	GHOST_IMAGE._color = CPC_CYAN;
	MISSILE_IMAGE._color = CPC_CYAN;

	#if defined(FULL_GAME)
		LEFT_ENEMY_MISSILE_IMAGE._imageData = '>';
		LEFT_ENEMY_MISSILE_IMAGE._color = CPC_CYAN;
		RIGHT_ENEMY_MISSILE_IMAGE._imageData = '<';
		RIGHT_ENEMY_MISSILE_IMAGE._color = CPC_CYAN;	
		
		BUBBLE_IMAGE._imageData = '^';
		BUBBLE_IMAGE._color = CPC_CYAN;
		
		EXTRA_POINTS_IMAGE._imageData = '$';
		
		EXTRA_LIFE_IMAGE._imageData = PLAYER_IMAGE._imageData;
		INVINCIBILITY_IMAGE._imageData = 'V';
		
		EXTRA_POINTS_IMAGE._color = CPC_YELLOW;
		EXTRA_LIFE_IMAGE._color = CPC_YELLOW;
		INVINCIBILITY_IMAGE._color = CPC_YELLOW;			
	#endif
}

#if defined(FULL_GAME)
	void DRAW_BROKEN_WALL(unsigned char x, unsigned char y)
	{
		gotoxy((x+X_OFFSET),(y+Y_OFFSET)); 
		#if defined(CPC_NO_COLOR)
		#else
			SET_TEXT_COLOR(CPC_CYAN);
		#endif
		cputc('X');
	}
#endif
	
void _draw(unsigned char x, unsigned char y, Image * image) 
{
	gotoxy((x+1+X_OFFSET),(y+Y_OFFSET)); 
	#if defined(CPC_NO_COLOR)
	#else
		SET_TEXT_COLOR(image->_color);
	#endif
	_DRAW
}

void _delete(unsigned char x, unsigned char y)
{
	gotoxy(x+1+X_OFFSET,y+Y_OFFSET);
	_DELETE
}

void _blink_draw(unsigned char x, unsigned char y, Image * image, unsigned char *blinkCounter) 
{
	gotoxy((x+1+X_OFFSET),(y+Y_OFFSET)); 
	if(*blinkCounter) 
	{
		#if defined(CPC_NO_COLOR)
		#else
			SET_TEXT_COLOR(image->_color);
		#endif
		_DRAW
		*blinkCounter=0;
	} 
	else 
	{
		_DELETE
		*blinkCounter=1;
	}	
}

void DRAW_VERTICAL_LINE(unsigned char x,unsigned char y, unsigned char length)
{ 
	unsigned char i;
	#if defined(CPC_NO_COLOR)
	#else
		SET_TEXT_COLOR(CPC_CYAN);
	#endif	
	for(i=0;i<length;++i)
	{
		gotoxy(x+1+X_OFFSET,y+i+Y_OFFSET);
		cputc('|');
	}
}

void DRAW_HORIZONTAL_LINE(unsigned char x,unsigned char y, unsigned char length)
{
	unsigned char i;
	#if defined(CPC_NO_COLOR)
	#else
		SET_TEXT_COLOR(CPC_CYAN);
	#endif	
	gotoxy(X_OFFSET+1+x,Y_OFFSET+y); 
	for(i=0;i<length;++i)
	{
		cputc('-');
	}
}




