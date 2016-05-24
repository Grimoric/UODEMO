// Real-C
#include "ENGINE.hpp"

#include "platemail.h"

TRIGGER( creation )()
{
  setObjVar(this, "plateMailCost", 0x05);
  return(0x01);
}