/*
  Test.h - Test library for Wiring - description
  Copyright (c) 2006 John Doe.  All right reserved.
*/

// ensure this library description is only included once
#ifndef RGBL_h
#define RGBL_h
#include "Arduino.h"

// include types & constants of Wiring core API

// library interface description
class RGBL
{
  // user-accessible "public" interface
  public:
    RGBL(int Blue, int Green, int Red);
    void Color(int R, int G, int B);

  // library-accessible "private" interface
private:
	int Rvalue;
	int Gvalue;
	int Bvalue;
};

#endif

