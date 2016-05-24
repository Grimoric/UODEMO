// Real-C
#include "ENGINE.hpp"

#include "spelskil.h"

FUNCTION int Q4A0(obj user, obj usedon)
{
  int item = getObjType(usedon);
  if((0x0E40 <= item) && (item <= 0x0E43))
  {
    if(!hasObjVar(usedon, "isLocked"))
    {
      return(0x01);
    }
  }
  return(0x00);
}

FUNCTION int Q4KM(obj user, obj usedon)
{
  int Q5NC = 0x00;
  if(Q50J(usedon))
  {
    loc Q4VS = loc( getLocation(user) );
    loc there = loc( getLocation(usedon) );
    faceHere(user, getDirectionInternal(Q4VS, there));
    if(Q4A0(user, usedon))
    {
      doLocAnimation(getLocation(usedon), 0x376A, 0x09, 0x20, 0x00, 0x00);
      sfx(there, 0x01F4, 0x00);
      if(!hasScript(usedon, "locked"))
      {
        attachScript(usedon, "locked");
      }
      setObjVar(usedon, "isLocked", 0x00);
      bark(user, "The chest is now locked!");
      Q5NC = 0x01;
    }
  }
  if(!Q5NC)
  {
    bark(user, "Hmmm...I can't lock that.");
  }
  Q5UQ(this);
  return(Q5NC);
}