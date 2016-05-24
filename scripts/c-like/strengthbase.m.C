// Real-C
#include "ENGINE.hpp"

#include "spelskil.h"

FUNCTION int Q4MD(obj user, obj usedon)
{
  int Q5NC = 0x00;
  if(Q50G(usedon))
  {
    int Q5WQ;
    int Q4NC;
    loc Q4VS = loc( getLocation(user) );
    loc there = loc( getLocation(usedon) );
    faceHere(user, getDirectionInternal(Q4VS, there));
    if(hasObjVar(this, "magicItemModifier"))
    {
      int Q52W = getObjVar(this, "magicItemModifier");
      Q4NC = 0x06 * Q52W;
      Q5WQ = Q52W;
    }
    else
    {
      Q4NC = 0x06 * getSkillLevel(user, 0x19) / 0x05 + 0x01;
      Q5WQ = getSkillLevel(user, 0x19) / 0x0A + 0x01;
    }
    if(!Q41Q(usedon, 0x00, Q5WQ, Q4NC))
    {
      Q4RD(user);
    }
    else
    {
      doMobAnimation(usedon, 0x375A, 0x0A, 0x0F, 0x00, 0x00);
      sfx(there, 0x01EE, 0x00);
      Q5NC = Q41J(user, usedon, 0x00, this);
    }
  }
  Q5UQ(this);
  return(Q5NC);
}