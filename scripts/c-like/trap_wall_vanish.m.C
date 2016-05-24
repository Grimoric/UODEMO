// Real-C
#include "ENGINE.hpp"

#include "globals.h"

TRIGGER( creation )()
{
  int Q5A2 = getObjType(this);
  setObjVar(this, "myObjType", Q5A2);
  setType(this, 0x01);
  return(0x00);
}

TRIGGER( enterrange , 0x02 )(obj target)
{
  if(isDead(target))
  {
    return(0x01);
  }
  int Q5A2 = getObjVar(this, "myObjType");
  if(getObjType(this) != Q5A2)
  {
    setType(this, Q5A2);
    setObjVar(this, "working", 0x01);
    callback(this, 0x03, 0x24);
  }
  return(0x01);
}

TRIGGER( callback , 0x24 )()
{
  list Q67G;
  clearList(Q67G);
  getMobsInRange(Q67G, getLocation(this), 0x03);
  if(numInList(Q67G) == 0x00)
  {
    setType(this, 0x01);
    removeObjVar(this, "working");
    return(0x00);
  }
  callback(this, 0x03, 0x24);
  return(0x00);
}