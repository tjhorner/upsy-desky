# Reverse Engineering Firmware

This is a special firmware designed to aid in the reverse engineering of new desk control box protocols. You can find the complete reverse engineering guide [here](https://github.com/tjhorner/upsy-desky/wiki/Reverse-Engineering-Guide).

You can flash this firmware on your stock Upsy Desky; no additional hardware is required. It uses ESPHome's [UART debugging feature](https://esphome.io/components/uart.html#debugging) to log all communication between the keypad and control box. You can use this data to reverse engineer the protocol based on the RE guide linked above.

## Customization

Aside from the normal UART parameters like baud rate, it may be helpful to adjust the parameters in the UART debugging component to make the data more readable and easier to RE. Particularly useful is the `after` parameter, which allows you to log a string of bytes after some specified number of bytes, timeout, or delimiter. You can see the specific configuration options in the [ESPHome documentation](https://esphome.io/components/uart.html#debugging).

You may also wish to change the GPIO port to match the RX and TX pins on your control box if the defaults don't match yours. See the [GPIO Pinout](https://github.com/tjhorner/upsy-desky/wiki/GPIO-Pinout) mapping to see which RJ45 pins correspond to which GPIO pins.