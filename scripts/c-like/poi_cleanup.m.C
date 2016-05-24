// Real-C
#include "ENGINE.hpp"

#include "globals.h"

TRIGGER( creation )()
{
  callback(this, 0x01F4, 0x4C);
  return(0x01);
}

TRIGGER( callback , 0x4C )()
{
  list Q5J1;
  getPlayersInRange(Q5J1, getLocation(this), 0x0F);
  if(numInList(Q5J1) > 0x00)
  {
    callback(this, 0x012C, 0x4C);
    return(0x00);
  }
  deleteObject(this);
  return(0x01);
}

TRIGGER( enterrange , 0x05 )(obj target)
{
  if(!isPlayer(target))
  {
    return(0x01);
  }
  callback(this, 0x012C, 0x4C);
  return(0x01);
}