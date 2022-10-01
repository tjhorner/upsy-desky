#include <Arduino.h>

#define LED_BUILTIN 23

// These correspond to RJ45 pins 1-6
int pins_to_test[] = {
  18,
  17,
  16,
  19,
  21,
  22
};

void setup() {
  Serial.begin(9600);

  pinMode(LED_BUILTIN, OUTPUT);
  
#ifdef TEST_HOST
  Serial.println("Initializing test host...");

  for (int &pin : pins_to_test) {
    pinMode(pin, INPUT);
  }

  digitalWrite(LED_BUILTIN, HIGH);

  delay(100);

  for (int &pin : pins_to_test) {
    Serial.print("Waiting for pin ");
    Serial.print(pin);
    Serial.println();

    while (digitalRead(pin) == LOW) {
      delay(50);
    }

    digitalWrite(LED_BUILTIN, LOW);
    delay(100);
    digitalWrite(LED_BUILTIN, HIGH);
  }
#else
  digitalWrite(LED_BUILTIN, HIGH);

  Serial.println("Initializing test target...");

  for (int &pin : pins_to_test) {
    pinMode(pin, OUTPUT);
    digitalWrite(pin, LOW);
  }
#endif
}

void loop() {
#ifdef TEST_TARGET
  for (int &pin : pins_to_test) {
    Serial.print("Pulsing pin ");
    Serial.print(pin);
    Serial.println();

    digitalWrite(pin, HIGH);
    delay(1000);
    digitalWrite(pin, LOW);
  }
#endif
}