// Real-C
#include "ENGINE.hpp"

#include "platemail.h"

TRIGGER( creation )()
{
  setObjVar(this, "plateMailCost", 0x02);
  return(0x01);
}