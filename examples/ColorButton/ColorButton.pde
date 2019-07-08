/* ----------------------------------------
 * - This Library was made by Minediversion.
 * 
 * - You can use the RGB Led more easily.
 * 
 * - This is a code to change the color of
 * the RGB Led, by pressing buttons.
 * ----------------------------------------
 */

#include <RGBL.h> //We include the library.

//We define the pins that the RGB Led are connected.
#define RPin 9 //Red Pin.
#define GPin 10 //Green Pin.
#define BPin 11 //Blue Pin.

//We define the Button pins.
#define BPin0 2 //First Button Pin.
#define BPin1 3 //Second Button Pin.
#define BPin2 4 //Third Button Pin.

RGBL led(RPin, GPin, BPin); //We configure the library.

//We create some variables to read the Button status.
int But0; //First Button.
int But1; //Second Button.
int But2; //Third Button.

void setup() {
  //We setup the Button Pins to INPUT.
  pinMode(BPin0, INPUT); //First Button.
  pinMode(BPin1, INPUT); //Second Button.
  pinMode(BPin2, INPUT); //Third Button.
}

void loop() {
  //We put the variables to read the status of the Buttons
  But0 = digitalRead(BPin0); //First Button.
  But1 = digitalRead(BPin1); //Second Button.
  But2 = digitalRead(BPin2); //Third Button.

  //We create an if to compare the variables with HIGH.
  if (But0 == HIGH){
    led.Color(255, 0, 0); //We put Red Color.
  }else if(But1 == HIGH){
    led.Color(0, 255, 0); //We put Green Color.
  }else if(But2 == HIGH){
    led.Color(0, 0, 255); //We put Blue Color.
  }else{
    led.Color(0, 0, 0); //We turn off the led.
  }
}
