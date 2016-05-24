// Real-C
#include "ENGINE.hpp"

#include "globals.h"

TRIGGER( callback , 0x57 )()
{
  removeObjVar(this, "potionHealed");
  detachScript(this, "potiontime");
  return(0x00);
}