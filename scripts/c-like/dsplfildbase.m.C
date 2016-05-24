// Real-C
#include "ENGINE.hpp"

#include "spelskil.h"

FUNCTION int Q4JJ(obj user, obj usedon)
{
  int Q5NC = 0x00;
  if(Q50G(usedon))
  {
    loc Q4VS = loc( getLocation(user) );
    loc there = loc( getLocation(usedon) );
    faceHere(user, getDirectionInternal(Q4VS, there));
    doLocAnimation(there, 0x376A, 0x09, 0x14, 0x00, 0x00);
    sfx(there, 0x0201, 0x00);
    if(hasScript(usedon, "destroy"))
    {
      deleteObject(usedon);
      Q5NC = 0x01;
    }
  }
  Q5UQ(this);
  return(Q5NC);
}