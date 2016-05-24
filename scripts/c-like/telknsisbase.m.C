// Real-C
#include "ENGINE.hpp"

#include "spelskil.h"

FUNCTION int Q4CU(obj user, obj usedon)
{
  if(!isValid(usedon))
  {
    return(0x00);
  }
  if(!canSeeObj(user, usedon))
  {
    systemMessage(user, "Target can not be seen");
    return(0x00);
  }
  return(0x01);
}

FUNCTION int Q4ML(obj user, obj usedon)
{
  int Q5NC = 0x00;
  if(Q4CU(user, usedon))
  {
    loc Q4VS = loc( getLocation(user) );
    loc there = loc( getLocation(usedon) );
    faceHere(user, getDirectionInternal(Q4VS, there));
    doLocAnimation(getLocation(usedon), 0x376A, 0x09, 0x20, 0x00, 0x00);
    sfx(there, 0x01F5, 0x00);
    useItem(user, usedon);
    Q5NC = 0x01;
  }
  Q5UQ(this);
  return(Q5NC);
}