// Real-C
#include "ENGINE.hpp"

#include "globals.h"

TRIGGER( creation )()
{
  setObjVar(this, "I_am_food", 0x01);
  return(0x00);
}

TRIGGER( use )(obj user)
{
  loc location = loc( getLocation(this) );
  obj Q5CY = createNoResObjectAt(0x097A, location);
  transferResources(Q5CY, this, 0x04, "fish");
  return(0x00);
}