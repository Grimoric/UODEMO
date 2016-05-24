// Real-C
#include "ENGINE.hpp"

#include "globals.h"

TRIGGER( callback , 0x1B )()
{
  if(hasObjVar(this, "inUse"))
  {
    removeObjVar(this, "inUse");
  }
  detachScript(this, "removeinuse");
  return(0x01);
}