// Real-C
#include "ENGINE.hpp"

#include "hintupdate.h"

TRIGGER( decay )(int oldvalue, int newvalue)
{
  int Q65M = 0x02;
  int Q45Y = 0x00;
  if(!getResource(Q45Y, this, "magic", 0x03, 0x02))
  {
    if(hasObjVar(this, "hintValue"))
    {
      Q45Y = getObjVar(this, "hintValue");
    }
    else
    {
      Q45Y = 0x01;
    }
  }
  if(Q45Y < 0x14)
  {
    Q65M = 0x03;
  }
  else
  {
    if(Q45Y < 0x50)
    {
      Q65M = 0x02;
    }
    else
    {
      Q65M = 0x00;
    }
  }
  hintupdate(Q65M, this);
  return(0x01);
}