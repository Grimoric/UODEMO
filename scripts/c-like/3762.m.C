// Real-C
#include "ENGINE.hpp"

#include "play.h"

TRIGGER( creation )()
{
  setObjVar(this, "isInstrument", 0x01);
  setObjVar(this, "goodSound", 0x45);
  setObjVar(this, "badSound", 0x46);
  return(0x00);
}