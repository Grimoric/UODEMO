// Real-C
#include "ENGINE.hpp"

#include "globals.h"

TRIGGER( creation )()
{
  callback(this, 0x1E, 0x83);
  return(0x01);
}

TRIGGER( callback , 0x83 )()
{
  removeObjVar(this, "targetingForObj");
  detachScript(this, "targeting");
  return(0x01);
}