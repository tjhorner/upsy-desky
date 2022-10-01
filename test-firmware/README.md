# Test Firmware

This firmware is used to test assembled boards before shipping. In the future I'd like this process to be more automated but this is what I have for now.

## Usage

You will need 2 desk controller boards for this.

1. Flash the `test_host` env to a board. This will be the known-good "host" board that will report the test results.
2. Flash the `test_target` env to the board you want to test. Unplug both from the computer.
3. Connect the host board to the target board with an RJ45 patch cable.
4. Plug the target board into power using micro USB. This will provide power to both boards since the +5V line is shared between them.
5. The LED on the host board should flash a total of 6 times. If it doesn't, this means one of the pins is not connected correctly. Troubleshoot accordingly.