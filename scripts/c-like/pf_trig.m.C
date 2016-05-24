// Real-C
#include "ENGINE.hpp"

#include "spelskil.h"

FUNCTION void Q41O(obj Q4P2, obj target)
{
  if(!isValid(target))
  {
    return;
  }
  if(isCounselor(target) || isDead(target))
  {
    return;
  }
  if(Q41L(Q4P2, target))
  {
    sfx(getLocation(target), 0x0205, 0x00);
    if(!hasScript(target, "poisoned"))
    {
      int resist = 0x00;
      resist = Q4CN(NULL(), target, 0x05);
      receiveUnhealthyActionFrom(target, Q4P2);
      if(!resist)
      {
        setObjVar(target, "poison_strength", 0x02);
        attachScript(target, "poisoned");
        Q556(target);
      }
    }
  }
  return;
}

TRIGGER( creation )()
{
  shortCallback(this, 0x01, 0x2F);
  return(0x01);
}

TRIGGER( enterrange , 0x00 )(obj target)
{
  Q41O(this, target);
  callback(this, 0x01, 0x2F);
  return(0x01);
}

TRIGGER( callback , 0x2F )()
{
  loc Q4VS = loc( getLocation(this) );
  list Q5HR;
  getMobsInRange(Q5HR, Q4VS, 0x01);
  for(int i = 0x00; i < numInList(Q5HR); i ++)
  {
    obj target = Q5HR[i];
    Q41O(this, target);
  }
  if(numInList(Q5HR) > 0x00)
  {
    callback(this, 0x01, 0x2F);
  }
  else
  {
    setObjVar(this, "defensive", 0x01);
  }
  return(0x01);
}