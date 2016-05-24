// Real-C
#include "ENGINE.hpp"

#include "wearstat.h"

TRIGGER( creation )()
{
  Q5X6 = 0x0A;
  Q4HZ = 0x0A;
  Q4YI = 0x0A;
  return(0x01);
}

FUNCTION void Q4HX(obj it)
{
  detachScript(it, "wearbless");
  return;
}