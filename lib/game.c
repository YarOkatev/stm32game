#include "game.h"
#include "textures.h"

#define PAUSE   8 * random ()

extern uint8_t SPEED;
uint32_t carPos = 10;
int16_t t1 = 0;
int16_t t2 = 0;
Model car1 = {-34, 3, 16, 34, 16*34, mycar};
Model car2 = {-34, 10, 16, 34, 16*34, enemi};
Model car3 = {-34, 30, 16, 34, 16*34, enemi};
Model car4 = {-34, 40, 16, 34, 16*34, enemi};
Model myCar = {90, 5, 16, 34, 16*34, mycar};

uint8_t random () {
    static uint8_t randNum = 55;
    static uint8_t fib[100] = {
        14, 216, 40, 170, 208, 168, 236, 156, 173, 148, 89, 132, 3,
        196, 93, 129, 242, 91, 29, 3, 83, 39, 225, 182, 96, 232, 1,
        175, 189, 161, 88, 65, 237, 181, 94, 192, 133, 31, 145, 22,
        117, 190, 130, 231, 28, 107, 117, 102, 133, 77, 85, 52, 55
    };

    if (randNum == 99)
        randNum = 0;
    else
        randNum++;

    int8_t n24 = randNum - 24;
    int8_t n55 = randNum - 55;
    fib[randNum] = (fib[n24 < 0 ? 100 + n24 : n24] + fib[n55 < 0 ? 100 + n55 : n55]) % 128 + 120;
    return fib[randNum];
}

void moveForward (Model* model) {
    model->x += SPEED;

    int16_t x = model->x;

    for (uint16_t y = 0; y < model->size; y++) {
        if (y % model->width == 0 && y != 0)
            x++;
        oledSetPix (x, model->y + (y % model->width), model->tex[y] < 120);
    }
}

void drawModel (Model* model) {
    int16_t x = model->x;

    for (uint16_t y = 0; y < model->size; y++) {
        if (y % model->width == 0 && y != 0)
            x++;
        oledSetPix (x, model->y + (y % model->width), model->tex[y] < 120);
    }
}



//------------------------- SYSTEM CONFIGS -----------------------------------//

void rcc_config(void)
{
    /* Set FLASH latency */
    LL_FLASH_SetLatency(LL_FLASH_LATENCY_1);

    /* Enable HSI and wait for activation*/
    LL_RCC_HSI_Enable();
    while (LL_RCC_HSI_IsReady() != 1);

    /* Main PLL configuration and activation */
    LL_RCC_PLL_ConfigDomain_SYS(LL_RCC_PLLSOURCE_HSI_DIV_2,
                                LL_RCC_PLL_MUL_12);

    LL_RCC_PLL_Enable();
    while (LL_RCC_PLL_IsReady() != 1);

    /* Sysclk activation on the main PLL */
    LL_RCC_SetAHBPrescaler(LL_RCC_SYSCLK_DIV_1);
    LL_RCC_SetSysClkSource(LL_RCC_SYS_CLKSOURCE_PLL);
    while (LL_RCC_GetSysClkSource() != LL_RCC_SYS_CLKSOURCE_STATUS_PLL);

    /* Set APB1 prescaler */
    LL_RCC_SetAPB1Prescaler(LL_RCC_APB1_DIV_1);

    /* Update CMSIS variable (which can be updated also
     * through SystemCoreClockUpdate function) */
    SystemCoreClock = 48000000;
}

void gpio_config(void)
{
    LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOA);
    LL_GPIO_SetPinPull(GPIOA, LL_GPIO_PIN_1, LL_GPIO_PULL_DOWN);
    LL_GPIO_SetPinPull(GPIOA, LL_GPIO_PIN_0, LL_GPIO_PULL_DOWN);

    LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOC);
    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_8, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_9, LL_GPIO_MODE_OUTPUT);
    return;
}

/*
 * Set callback for out device
 */
void printf_config(void)
{
    xdev_out(oled_putc);
    return;
}


//****************************************************************************//
//------------------------- ENCODER CONFIGS ----------------------------------//
//****************************************************************************//

void exti_config(void)
{
    LL_APB1_GRP2_EnableClock(LL_APB1_GRP2_PERIPH_SYSCFG);

    LL_SYSCFG_SetEXTISource(LL_SYSCFG_EXTI_PORTA, LL_SYSCFG_EXTI_LINE1);
    LL_SYSCFG_SetEXTISource(LL_SYSCFG_EXTI_PORTA, LL_SYSCFG_EXTI_LINE0);
    LL_EXTI_EnableIT_0_31(LL_EXTI_LINE_1);
    LL_EXTI_EnableIT_0_31(LL_EXTI_LINE_0);

    LL_EXTI_EnableFallingTrig_0_31(LL_EXTI_LINE_1);
    LL_EXTI_EnableRisingTrig_0_31(LL_EXTI_LINE_1);

    LL_EXTI_EnableFallingTrig_0_31(LL_EXTI_LINE_0);
    LL_EXTI_EnableRisingTrig_0_31(LL_EXTI_LINE_0);
    /*
     * Setting interrupts
     */
    NVIC_EnableIRQ(EXTI0_1_IRQn);
    NVIC_SetPriority(EXTI0_1_IRQn, 0);
}

void EXTI0_1_IRQHandler(void)
{
    static int8_t states[] = {0,-1,1,0,1,0,0,-1,-1,0,0,1,0,1,-1,0};
    static uint8_t enc_trans = 0;
    static int8_t enc_dir = 0;
    uint8_t enc_state = 0x00;

    enc_state = 0x0003 & LL_GPIO_ReadInputPort(GPIOA);
    enc_trans = ((0x03 & enc_trans) << 2) | enc_state;
    enc_dir += states[enc_trans];


    if (enc_dir == 3) {
        if (myCar.y + myCar.width <= 61) {
            myCar.y += 1;
        }
        enc_dir = 0;
    } else if (enc_dir == -3) {
        if (myCar.y >= 3) {
            myCar.y -= 1;
        }
        enc_dir = 0;
    }

    LL_EXTI_ClearFlag_0_31(LL_EXTI_LINE_1);
    LL_EXTI_ClearFlag_0_31(LL_EXTI_LINE_0);
}

//****************************************************************************//
//--------------------------- TIMER CONFIGS ----------------------------------//
//****************************************************************************//


void timers_config(void)
{
//--------------------------- FIRST TIMER ----------------------------------//

    LL_APB1_GRP1_EnableClock(LL_APB1_GRP1_PERIPH_TIM2);
    LL_TIM_SetPrescaler(TIM2, 47999);
    LL_TIM_SetAutoReload(TIM2, PAUSE);
    LL_TIM_SetCounterMode(TIM2, LL_TIM_COUNTERMODE_UP);
    LL_TIM_EnableIT_UPDATE(TIM2);
    LL_TIM_EnableCounter(TIM2);

    NVIC_EnableIRQ(TIM2_IRQn);
    NVIC_SetPriority(TIM2_IRQn, 0);

//--------------------------- SECOND TIMER ----------------------------------//

    // LL_APB1_GRP1_EnableClock(LL_APB1_GRP1_PERIPH_TIM3);
    // LL_TIM_SetPrescaler(TIM3, 47999);
    // LL_TIM_SetAutoReload(TIM3, PAUSE);
    // LL_TIM_SetCounterMode(TIM3, LL_TIM_COUNTERMODE_UP);
    // LL_TIM_EnableIT_UPDATE(TIM3);
    // LL_TIM_EnableCounter(TIM3);
    //
    // NVIC_EnableIRQ(TIM3_IRQn);
    // NVIC_SetPriority(TIM3_IRQn, 0);
}

void TIM2_IRQHandler(void)
{
    uint8_t choice = random () % 2;
    if (choice == 0 && car1.x > GMEM_WIDTH) {
        car1.x = -car1.height;
        car2.x = -car1.height;
        car3.x = -car1.height;
        car4.x = -car1.height;
    } else  if (choice == 1 && t2 > GMEM_WIDTH) {
        t2 = -20;
    } else {
        LL_TIM_SetAutoReload(TIM2, 10000);
    }
    LL_TIM_SetAutoReload(TIM2, PAUSE);
    LL_TIM_ClearFlag_UPDATE(TIM2);
	return;
}

// void TIM3_IRQHandler(void)
// {
//     LL_TIM_SetAutoReload(TIM3, PAUSE);
//     t2 = 0;
//     LL_TIM_ClearFlag_UPDATE(TIM3);
// 	return;
// }
