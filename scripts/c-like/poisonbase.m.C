// Real-C
#include "ENGINE.hpp"

#include "spelskil.h"

FUNCTION int Q4LR(obj user, obj usedon, int Q5NM)
{
  int Q5NC = 0x00;
  if(Q50G(usedon))
  {
    int Q5JD;
    int Q66X;
    loc Q4VS = loc( getLocation(user) );
    loc there = loc( getLocation(usedon) );
    faceHere(user, getDirectionInternal(Q4VS, there));
    doMobAnimation(usedon, 0x374A, 0x0A, 0x0F, 0x00, 0x00);
    sfx(there, 0x0205, 0x00);
    if(!hasScript(usedon, "poisoned"))
    {
      Q422(user, usedon, 0x00, Q5NM);
      receiveUnhealthyActionFrom(usedon, user);
      Q5UK(user, usedon, 0x02, Q5NM);
      if(isValid(usedon) && (!Q4CN(user, usedon, 0x03)))
      {
        Q66X = getSkillLevel(user, 0x19);
        if(random(0x01, 0x64) < Q66X)
        {
          Q5JD = 0x02;
        }
        else
        {
          Q5JD = 0x04;
        }
        if((!hasObjVar(usedon, "poison_strength")) && (!hasScript(usedon, "poisoned")))
        {
          setObjVar(usedon, "poison_strength", Q5JD);
          attachScript(usedon, "poisoned");
          Q5NC = 0x01;
          if(isValid(usedon))
          {
            scriptTrig(usedon, 0x01, user);
          }
        }
      }
    }
  }
  Q5UQ(this);
  return(Q5NC);
}