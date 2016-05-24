// Real-C
#include "ENGINE.hpp"

#include "spelskil.h"

MEMBER int Q5NQ;
MEMBER obj Q57L;
MEMBER obj Q57M;

FUNCTION int Q4JO(obj user, obj usedon, int Q5NM)
{
  int Q5NC = 0x00;
  if(Q50G(usedon))
  {
    loc Q4VS = loc( getLocation(user) );
    loc there = loc( getLocation(usedon) );
    faceHere(user, getDirectionInternal(Q4VS, there));
    doMissile_Mob2Mob(user, usedon, 0x379F, 0x07, 0x00, 0x01);
    sfx(Q4VS, 0x020A, 0x00);
    Q57M = usedon;
    Q57L = user;
    callback(this, 0x01, 0x19);
    Q5UK(user, usedon, 0x02, Q5NM);
    Q5NQ = Q5NM;
    Q5NC = 0x01;
  }
  Q5UR(this, Q5NC);
  return(Q5NC);
}

TRIGGER( callback , 0x19 )()
{
  int Q527 = Q429(this, Q57L, Q57M, 0x02, Q5NQ);
  if(isValid(Q57M))
  {
    scriptTrig(Q57M, 0x01, Q57L);
  }
  Q5UQ(this);
  return(0x00);
}