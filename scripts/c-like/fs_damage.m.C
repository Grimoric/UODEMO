// Real-C
#include "ENGINE.hpp"

#include "globals.h"

TRIGGER( creation )()
{
  callback(this, 0x02, 0x3E);
  return(0x01);
}

TRIGGER( callback , 0x3E )()
{
  list Q4GI;
  getMobsInRange(Q4GI, getLocation(this), 0x00);
  for(int i = 0x00; i < numInList(Q4GI); i ++)
  {
    loseHP(Q4GI[i], dice(0x14, 0x05));
  }
  callback(this, 0x02, 0x3E);
  return(0x01);
}