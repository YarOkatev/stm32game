#include "game.h"
//#include "textures.h"

extern int16_t t1;
extern int16_t t2;
extern uint32_t carPos;
extern uint8_t SPEED;
extern Model car1, car2, car3, car4;

extern Model myCar;
//extern const uint8_t my_pic[16*34];

#define DELAY x = 1000000; while (x--);

int main(void)
{
    rcc_config();
    gpio_config();
    oled_config();
    printf_config();
    timers_config();
    exti_config();

    int x;

    while (1) {


        oledFrame2 ();

        //drawEmptyRec (10, 7, 40, 24, clWhite);
        //drawEmptyRec (t2, 10, 20 + t2, 24, clWhite);
        //car1.x++;

        moveForward (&car1);
        // moveForward (&car2);
        // moveForward (&car3);
        // moveForward (&car4);

        drawModel (&myCar);

        oledUpdate();

        DELAY
    }

}
