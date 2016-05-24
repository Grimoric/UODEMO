// Real-C
#include "ENGINE.hpp"

#include "femaleplatemail.h"

TRIGGER( creation )()
{
  setObjVar(this, "plateMailCost", 0x05);
  return(0x01);
}