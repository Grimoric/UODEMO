// Real-C
#include "ENGINE.hpp"

#include "globals.h"

TRIGGER( enterrange , 0x03 )(obj target)
{
  int Q61Y = getObjType(this);
  string Q628 = Q61Y;
  bark(this, Q628);
  if(!(getObjType(this) == 0x11A6))
  {
    setType(this, 0x11A6);
    callback(this, 0x03, 0x24);
  }
  return(0x01);
}

TRIGGER( callback , 0x24 )()
{
  list Q67G;
  getMobsInRange(Q67G, getLocation(this), 0x05);
  if(numInList(Q67G) == 0x00)
  {
    setType(this, 0x01);
  }
  else
  {
    callback(this, 0x03, 0x24);
  }
  return(0x00);
}