// Real-C
#include "ENGINE.hpp"

#include "globals.h"

FUNCTION void Q4DF()
{
  detachScript(this, "bounty");
  detachScript(this, "bountyclaim");
  detachScript(this, "bountymark");
  removeObjVar(this, "killcount");
  removeObjVar(this, "bountyKiller");
  removeObjVar(this, "myLastKiller");
  removeObjVar(this, "lastCriminal");
  removeObjVar(this, "killer");
  return;
}

TRIGGER( online )()
{
  Q4DF();
  return(0x01);
}

TRIGGER( creation )()
{
  setKarma(this, getNotoriety(this) * 0x1770 / 0x7F);
  int Q5VY = getRealStrength(this) + getRealDexterity(this) + getRealIntelligence(this);
  setFame(this, (getSkillTotal(this) + (Q5VY * 0x0E)) * 0x0BB8 / 0x2710);
  int murderCount = 0x00;
  if(hasObjVar(this, "goodAndNeutralPlayerKills"))
  {
    murderCount = getObjVar(this, "goodAndNeutralPlayerKills");
  }
  list killcount;
  if(hasObjVar(this, "killcount"))
  {
    getObjListVar(killcount, this, "killcount");
    murderCount = murderCount + numInList(killcount);
  }
  if(murderCount > 0x04)
  {
    murderCount = 0x04;
  }
  setMurderCount(this, murderCount);
  setResurrectionResources(this);
  callback(this, 0x0A, 0x04D2);
  Q4DF();
  return(0x00);
}

TRIGGER( callback , 0x04D2 )()
{
  return(0x00);
}