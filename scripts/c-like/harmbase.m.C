// Real-C
#include "ENGINE.hpp"

#include "spelskil.h"

FUNCTION int Q4K8(obj user, obj usedon, int Q5NM)
{
  int Q5NC = 0x00;
  if(Q50G(usedon))
  {
    Q5NC = 0x01;
    loc Q4VS = loc( getLocation(user) );
    loc there = loc( getLocation(usedon) );
    faceHere(user, getDirectionInternal(Q4VS, there));
    doMobAnimation(usedon, 0x374A, 0x0A, 0x0F, 0x00, 0x00);
    sfx(there, 0x01F1, 0x00);
    int Q527 = Q429(this, user, usedon, 0x01, Q5NM);
    Q5UK(user, usedon, 0x02, Q5NM);
  }
  Q5UQ(this);
  return(Q5NC);
}