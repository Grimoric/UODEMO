// Real-C
#include "ENGINE.hpp"

#include "spelskil.h"

TRIGGER( callback , 0x13 )()
{
  if(hasObjVar(this, "defenseBonus"))
  {
    int Q48Q = getObjVar(this, "defenseBonus");
    int Q5MX = getNaturalAC(this) - Q48Q;
    setNaturalAC(this, Q5MX);
    removeObjVar(this, "defenseBonus");
  }
  detachScript(this, "remprtct");
  return(0x00);
}