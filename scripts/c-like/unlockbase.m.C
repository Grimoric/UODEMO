// Real-C
#include "ENGINE.hpp"

#include "spelskil.h"

FUNCTION int Q4MQ(obj user, obj usedon)
{
  int Q5NC = 0x00;
  if(Q50J(usedon))
  {
    loc Q4VS = loc( getLocation(user) );
    loc there = loc( getLocation(usedon) );
    faceHere(user, getDirectionInternal(Q4VS, there));
    doLocAnimation(there, 0x376A, 0x09, 0x20, 0x00, 0x00);
    sfx(there, 0x01FF, 0x00);
    if(hasObjVar(usedon, "isLocked"))
    {
      int Q53N = getObjVar(usedon, "isLocked");
      int Q54R = getSkillLevelReal(user, 0x19) / 0x05;
      if(Q53N < 0xFF)
      {
        int Q53M = Q53N;
        if(Q54R < Q53M)
        {
          barkTo(user, user, "My spell does not seem to have an effect on that lock.");
        }
        else
        {
          removeObjVar(usedon, "isLocked");
          Q5NC = 0x01;
        }
      }
      else
      {
        barkTo(user, user, "My spell had no effect on that lock.");
      }
    }
    else
    {
      barkTo(user, user, "That did not need to be unlocked.");
    }
  }
  Q5UQ(this);
  return(Q5NC);
}