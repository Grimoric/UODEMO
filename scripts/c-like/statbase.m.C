// Real-C
#include "ENGINE.hpp"

#include "spelskil.h"

FUNCTION int Q4MA(obj user, obj usedon, int Q5VX, int Q4ID, int Q5NM)
{
  int Q5NC = 0x00;
  int Q463;
  int Q4NC;
  if(Q50G(usedon))
  {
    loc Q4VS = loc( getLocation(user) );
    loc there = loc( getLocation(usedon) );
    faceHere(user, getDirectionInternal(Q4VS, there));
    if(hasObjVar(this, "magicItemModifier"))
    {
      int Q52W = getObjVar(this, "magicItemModifier");
      Q4NC = 0x06 * Q52W;
      Q463 = Q52W;
    }
    else
    {
      Q4NC = 0x06 * getSkillLevel(user, 0x19) / 0x05 + 0x01;
      Q463 = getSkillLevel(user, 0x19) / 0x0A + 0x01;
    }
    if(!Q4ID)
    {
      Q463 = 0x00 - Q463;
    }
    if(!Q41Q(usedon, Q5VX, Q463, Q4NC))
    {
      Q5NC = 0x01;
      Q4RD(user);
    }
    else
    {
      doMobAnimation(usedon, Q4T7(Q5VX, Q4ID), 0x0A, 0x0F, 0x00, 0x00);
      sfx(there, Q4TA(Q5VX, Q4ID), 0x00);
    }
    if(!Q4ID)
    {
      Q422(user, usedon, 0x00, Q5NM);
      Q5UK(user, usedon, 0x02, Q5NM);
      Q41C(user, usedon, Q5NM);
      receiveUnhealthyActionFrom(usedon, user);
    }
  }
  Q5UQ(this);
  return(Q5NC);
}