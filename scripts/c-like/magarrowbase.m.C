// Real-C
#include "ENGINE.hpp"

#include "spelskil.h"

MEMBER int Q5NQ;
MEMBER obj Q57L;
MEMBER obj Q57M;

FUNCTION int Q4KL(obj user, obj usedon, int Q5NM)
{
  int Q5NC = 0x00;
  if(Q50G(usedon))
  {
    int damage;
    loc Q4VS = loc( getLocation(user) );
    loc there = loc( getLocation(usedon) );
    faceHere(user, getDirectionInternal(Q4VS, there));
    Q5NC = 0x01;
    doMissile_Mob2Mob(user, usedon, 0x36E4, 0x05, 0x00, 0x00);
    sfx(Q4VS, 0x01E5, 0x00);
    Q57M = usedon;
    Q57L = user;
    Q5UK(user, usedon, 0x02, Q5NM);
    callback(this, 0x01, 0x19);
    Q5NQ = Q5NM;
  }
  Q5UR(this, Q5NC);
  return(Q5NC);
}

TRIGGER( callback , 0x19 )()
{
  int Q527 = Q429(this, Q57L, Q57M, 0x01, Q5NQ);
  Q5UQ(this);
  return(0x00);
}