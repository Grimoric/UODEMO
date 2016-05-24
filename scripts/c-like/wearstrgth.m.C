// Real-C
#include "ENGINE.hpp"

#include "wearstat.h"

TRIGGER( creation )()
{
  Q5X6 = 0x0A;
  return(0x01);
}

FUNCTION void Q4HX(obj it)
{
  detachScript(it, "wearstrgth");
  return;
}