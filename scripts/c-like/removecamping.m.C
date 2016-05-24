// Real-C
#include "ENGINE.hpp"

#include "globals.h"

TRIGGER( callback , 0x5F )()
{
  if(hasObjVar(this, "campFireId"))
  {
    removeObjVar(this, "campFireId");
  }
  if(hasObjVar(this, "timeInCamp"))
  {
    removeObjVar(this, "timeInCamp");
  }
  detachScript(this, "removecamping");
  return(0x01);
}