// Real-C
#include "ENGINE.hpp"

#include "spelskil.h"

FUNCTION int Q4LX(obj user, obj usedon)
{
  int Q5NC = 0x00;
  if(Q50G(usedon))
  {
    loc Q4VS = loc( getLocation(user) );
    loc there = loc( getLocation(usedon) );
    faceHere(user, getDirectionInternal(Q4VS, there));
    doMobAnimation(usedon, 0x376A, 0x09, 0x20, 0x00, 0x00);
    sfx(there, 0x01F2, 0x00);
    if(!(hasScript(usedon, "reaction")))
    {
      attachScript(usedon, "reaction");
      int Q4NC = 0x19 + getSkillLevel(user, 0x19) / 0x02;
      callback(usedon, Q4NC, 0x2F);
      int Q527 = Q41J(user, usedon, 0x00, this);
      Q5NC = 0x01;
    }
    else
    {
      barkToHued(user, user, 0x22, "This target already has Reactive Armor");
    }
  }
  else
  {
    barkToHued(user, user, 0x22, "This target is not valid. It must be a being or person.");
  }
  Q5UQ(this);
  return(Q5NC);
}