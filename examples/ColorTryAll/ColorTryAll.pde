/* ----------------------------------------
 * This Library was made by Minediversion.
 * You can use the RGB Led more easily.
 * Feel free to share this library.
 * ----------------------------------------
 */
#include <RGBL.h> //We include the RGB_Led library.

//We define the RGB Led Pin.
#define RLP 9 //Red Pin.
#define GLP 10 //Green Pin.
#define BLP 11 //Blue Pin.

//We configure the library.
RGBL led(RLP, GLP, BLP);

void setup() {
  //We don't need to setup anything.
}

void loop() {
  //With the Color(); funcition we put the RGB combination that we want. 
  led.Color(0, 255, 0); //Green Color.
  delay(1000);
  led.Color(0, 0, 255); //Blue Color.
  delay(1000);
  led.Color(255, 0, 0); //Red Color.
  delay(1000);
}
