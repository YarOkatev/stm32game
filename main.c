#include "game.h"

int main(void)
{
    rcc_config();
    gpio_config();
    oled_config();
    printf_config();
    timers_config();
    exti_config();
    systick_config();

    STATE = START_SCREEN;

    startScreen();

    while (1) {
        initModels();
        countdown();
        game();
        endGame();
    }
}
