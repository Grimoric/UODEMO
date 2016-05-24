// Real-C
#include "ENGINE.hpp"

#include "spelskil.h"

MEMBER int Q5NQ;
MEMBER obj Q57L;
MEMBER obj Q57M;
MEMBER int Q57H;

FUNCTION int Q4LB(obj user, obj usedon, int Q5NM)
{
  int Q5NC = 0x00;
  if(Q50G(usedon))
  {
    int damage;
    loc Q4VS = loc( getLocation(user) );
    loc there = loc( getLocation(usedon) );
    faceHere(user, getDirectionInternal(Q4VS, there));
    doMobAnimation(usedon, 0x374A, 0x0A, 0x0F, 0x00, 0x00);
    sfx(there, 0x0213, 0x00);
    int Q4HB = (getIntelligence(user) - getIntelligence(usedon));
    obj Q5A1 = usedon;
    obj Q5A0 = user;
    Q422(user, usedon, 0x00, Q5NM);
    if(Q4HB <= 0x00)
    {
      Q4HB = (getIntelligence(usedon) - getIntelligence(user));
      doMobAnimation(user, 0x374A, 0x0A, 0x0F, 0x00, 0x00);
      Q5A1 = user;
      Q5A0 = usedon;
    }
    damage = Q4HB / 0x04;
    Q57M = Q5A1;
    Q57H = damage;
    Q57L = Q5A0;
    callback(this, 0x01, 0x19);
    Q5UK(user, usedon, 0x02, Q5NM);
    Q5NQ = Q5NM;
    Q5NC = 0x01;
  }
  else
  {
    bark(user, "This spell won't work on that!");
    Q4RD(user);
  }
  Q5UR(this, Q5NC);
  return(Q5NC);
}

TRIGGER( callback , 0x19 )()
{
  int Q527 = Q428(this, Q57H, Q57L, Q57M, 0x08, Q5NQ);
  scriptTrig(Q57M, 0x01, Q57L);
  Q5UQ(this);
  return(0x00);
}