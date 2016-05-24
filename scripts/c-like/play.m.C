// Real-C
#include "ENGINE.hpp"

#include "sndfx.h"

TRIGGER( use )(obj user)
{
  setObjVar(user, "lastInstrument", this);
  int Q5U6;
  if(!skillTest(user, 0x1D))
  {
    Q5U6 = getObjVar(this, "badSound");
    sfx(getLocation(user), Q5U6, 0x3C);
    return(0x00);
  }
  Q5U6 = getObjVar(this, "goodSound");
  sfx(getLocation(user), Q5U6, 0x3C);
  return(0x01);
}