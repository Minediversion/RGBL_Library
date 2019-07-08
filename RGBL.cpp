/*
  Test.h - Test library for Wiring - implementation
  Copyright (c) 2006 John Doe.  All right reserved.
*/

// include core Wiring API
#include "Arduino.h"

// include this library's description file
#include "RGBL.h"

// include description files for other libraries used (if any)
#include "HardwareSerial.h"

// Constructor /////////////////////////////////////////////////////////////////
// Function that handles the creation and setup of instances

RGBL::RGBL(int Blue, int Green, int Red)
{
  // initialize this instance's variables
   Rvalue = Red;
   Gvalue = Green;
   Bvalue = Blue;

  // do whatever is required to initialize the library
}

// Public Methods //////////////////////////////////////////////////////////////
// Functions available in Wiring sketches, this library, and other libraries
void RGBL::Color(int R, int G, int B)
{
   analogWrite(Rvalue, R);
   analogWrite(Gvalue, G);
   analogWrite(Bvalue, B);
}