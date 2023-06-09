

// LEVEL 2

#if XSize>40
    #define LV_SQUARES_WIDTH XSize/3
#elif XSize>20
    #define LV_SQUARES_WIDTH XSize/4
#elif XSize>16 
	#define LV_SQUARES_WIDTH XSize/5
#else
	#define LV_SQUARES_WIDTH XSize/6
#endif

#if YSize>40
    #define LV_SQUARES_HEIGHT YSize/3
#elif YSize>20
    #define LV_SQUARES_HEIGHT YSize/4
#elif YSize>16 
	#define LV_SQUARES_HEIGHT YSize/5
#else
	#define LV_SQUARES_HEIGHT YSize/6
#endif

#define LV_SQUARES_NO_OF_OBJECTS 5


#define LV_SQUARES_OBJECTS \
    LV_SQUARES_NO_OF_OBJECTS, \
	\
    3,4,LV_SQUARES_WIDTH,LV_SQUARES_HEIGHT,WALL,_XL_YELLOW, \
	XSize-1-2-LV_SQUARES_WIDTH,4,LV_SQUARES_WIDTH,LV_SQUARES_HEIGHT,WALL,_XL_YELLOW, \
	\
	3,YSize-1-2-LV_SQUARES_HEIGHT,LV_SQUARES_WIDTH,LV_SQUARES_HEIGHT,WALL,_XL_YELLOW, \
	XSize-1-2-LV_SQUARES_WIDTH,YSize-1-2-LV_SQUARES_HEIGHT,LV_SQUARES_WIDTH,LV_SQUARES_HEIGHT,WALL,_XL_YELLOW,  \
	\
	1,2,XSize-2,1,DIAMOND,_XL_GREEN \



#define LV_SQUARES_OBJECTS_SIZE LV_OBJECTS_SIZE(LV_SQUARES_NO_OF_OBJECTS)


//

#define LV_SQUARES_SHURIKENS \
	0,0,0
    

#define LV_SQUARES_SHURIKENS_SIZE LV_SHURIKENS_SIZE(0,0,0)



#define LV_SQUARES_NO_OF_WALLS 0

#define LV_SQUARES_WALLS \
	LV_SQUARES_NO_OF_WALLS


#define LV_SQUARES_WALLS_SIZE LC_WALLS_SIZE(LV_SQUARES_NO_OF_WALLS)

