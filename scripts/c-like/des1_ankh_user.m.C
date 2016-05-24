// Real-C
#include "ENGINE.hpp"

#include "globals.h"

MEMBER int Q5MZ;
MEMBER int Q5MY;

TRIGGER( creation )()
{
  Q5MZ = getHour();
  Q5MY = getDay();
  return(0x00);
}

TRIGGER( time , "hour:**" )()
{
  if((getDay() != Q5MY) && (getHour() == Q5MZ) && (hasObjVar(this, "usedDespiseLevelOneAnkh")))
  {
    int Q4VO = getObjVar(this, "usedDespiseLevelOneAnkh");
    if(Q4VO == 0x04)
    {
      setCurHP(this, getMaxHP(this));
      setCurMana(this, getMaxMana(this));
      setCurFatigue(this, getMaxFatigue(this));
      barkTo(this, this, "You feel completely rejuvinated!");
    }
    removeObjVar(this, "usedDespiseLevelOneAnkh");
    detachScript(this, "des1_ankh_user");
  }
  return(0x00);
}