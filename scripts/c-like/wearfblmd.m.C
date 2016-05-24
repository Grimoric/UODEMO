// Real-C
#include "ENGINE.hpp"

#include "wearstat.h"

TRIGGER( creation )()
{
  Q4YI = 0x00 - 0x0A;
  return(0x01);
}

FUNCTION void Q4HX(obj it)
{
  detachScript(it, "wearfblmd");
  return;
}