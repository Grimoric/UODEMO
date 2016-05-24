// Real-C
#include "ENGINE.hpp"

#include "spelskil.h"

FUNCTION int Q4KC(obj user, obj usedon)
{
  int Q5NC = 0x00;
  if(!Q50G(usedon))
  {
    barkToHued(user, user, 0x22, "You cannot make an inanimate object invisible.");
  }
  else
  {
    int Q4NC;
    loc Q4VS = loc( getLocation(user) );
    loc there = loc( getLocation(usedon) );
    faceHere(user, getDirectionInternal(Q4VS, there));
    if(hasScript(usedon, "reminvis"))
    {
      if(isInvisible(usedon))
      {
        Q4RD(user);
        callback(this, 0x00, 0x48);
        return(Q5NC);
      }
      else
      {
        detachScript(usedon, "reminvis");
      }
    }
    doMobAnimation(usedon, 0x376A, 0x0A, 0x0F, 0x00, 0x00);
    sfx(there, 0x0203, 0x00);
    if(hasObjVar(this, "magicItemModifier"))
    {
      int Q52W = getObjVar(this, "magicItemModifier");
      Q4NC = 0x06 * Q52W;
    }
    else
    {
      if(getSkillLevel(user, 0x19) < 0x0A)
      {
        Q4NC = 0x06;
      }
      else
      {
        Q4NC = 0x06 * getSkillLevel(user, 0x19) / 0x05;
      }
    }
    attachScript(usedon, "reminvis");
    setInvisible(usedon, 0x01);
    int Q527 = Q41J(user, usedon, 0x00, this);
    callback(usedon, Q4NC, 0x1F);
    Q5NC = 0x01;
  }
  Q5UQ(this);
  return(Q5NC);
}