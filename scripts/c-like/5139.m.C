// Real-C
#include "ENGINE.hpp"

#include "platemail.h"

TRIGGER( creation )()
{
  setObjVar(this, "plateMailCost", 0x01);
  return(0x01);
}