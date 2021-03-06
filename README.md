## FLATOUT ZERO GAME FOR STM32F0xx
---

### Подключение внешней периферии
  - Энкодер
    - Питание -> 3V
    - A1, A0
  - Кнопка
    - B2
    - 3V
  - Дисплей
    - GND -> GND
    - VCC -> 3V
    - SCL -> B10
    - SDA -> B11
  - Пьезодинамик
    - A5
    - GND
    
#### Схема в сборе

<p align="center">
  <img width="600" src="https://github.com/YarOkatev/stm32game/blob/master/IMG_20190521_195828.jpg" alt="oled.jpg"/>
  <p align="center"> Рис. 1. Собранный вид <p align="center">

---

### Прошивка
  Загрузите [game.bin](https://github.com/YarOkatev/stm32game/raw/master/build/game.bin), подключите собранную плату и      выполните команду:
  ```
     st-flash write game.bin 0x08000000
  ```

---

### Благодарность
  Лектору и менторам курса по STM32 от Студсовета ФРТК, МФТИ

  Репозиторий курса: [GitHub](https://github.com/edosedgar/stm32f0_ARM)
