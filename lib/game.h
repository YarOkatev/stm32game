#ifndef __GAME_H___
#define __GAME_H___

#include "stm32f0xx_ll_rcc.h"
#include "stm32f0xx_ll_system.h"
#include "stm32f0xx_ll_bus.h"
#include "stm32f0xx_ll_gpio.h"
#include "stm32f0xx_ll_exti.h"
#include "stm32f0xx_ll_utils.h"
#include "stm32f0xx_ll_cortex.h"
#include "stm32f0xx_ll_tim.h"

#include "xprintf.h"
#include "oled_driver.h"



typedef struct _car {
	int16_t x;
	int16_t y;
	uint8_t width;
	uint8_t height;
	uint16_t size;
	uint8_t* tex;
} Model;


//------------------------------ VARIABLES -----------------------------------//



//------------------------- SYSTEM CONFIGS -----------------------------------//

void rcc_config(void);
void gpio_config(void);
void printf_config(void);
void exti_config(void);
void timers_config(void);

//------------------------- USER FUNCTIONS -----------------------------------//

uint8_t random ();
void moveForward (Model* model);
void drawModel (Model* model);


#endif //__GAME_H___
