// Real-C
#include "ENGINE.hpp"

#include "spelskil.h"

TRIGGER( creation )()
{
  setObjVar(this, "defensive", 0x01);
  return(0x01);
}

FUNCTION void Q41N(obj Q4P2, obj target)
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
    sfx(getLocation(target), 0x0204, 0x00);
    if((!hasScript(target, "rempara")) && (!getMobFlag(target, 0x02)))
    {
      int resist = 0x00;
      resist = Q4CN(NULL(), target, 0x06);
      if(!resist)
      {
        setWaitState(target, 0x50);
        int Q67T = waitState(target);
        setMobFlag(target, 0x02, 0x01)/* semicolon added by the decompiler post-processor */;
        attachScript(target, "rempara");
        receiveUnhealthyActionFrom(target, Q4P2);
        callback(target, 0x1E, 0x0D);
        Q556(target);
      }
    }
  }
  return;
}

TRIGGER( enterrange , 0x00 )(obj target)
{
  Q41N(this, target);
  return(0x01);
}