// Real-C
#include "ENGINE.hpp"

#include "globals.h"

TRIGGER( creation )()
{
  callback(this, 0x0E10, 0x5B);
  return(0x01);
}

TRIGGER( callback , 0x5B )()
{
  list Q5J1;
  getPlayersInRange(Q5J1, getLocation(this), 0x0A);
  if(numInList(Q5J1) > 0x00)
  {
    callback(this, 0x012C, 0x5B);
    return(0x00);
  }
  deleteObject(this);
  return(0x01);
}

TRIGGER( gotattacked )(obj attacker)
{
  callback(this, 0x0E10, 0x5B);
  return(0x01);
}