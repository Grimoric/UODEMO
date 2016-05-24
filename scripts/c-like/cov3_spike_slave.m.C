// Real-C
#include "ENGINE.hpp"

#include "globals.h"

MEMBER int Q468;

TRIGGER( creation )()
{
  setType(this, 0x01);
  return(0x00);
}

TRIGGER( message , "doAnimation" )(obj sender, list args)
{
  list Q67G;
  doLocAnimation(getLocation(this), 0x111C, 0x02, 0x10, 0x00, 0x00);
  getMobsInRange(Q67G, getLocation(this), 0x01);
  for(int i = 0x00; i < numInList(Q67G); i ++)
  {
    loseHP(Q67G[i], dice(0x14, 0x05));
  }
  return(0x00);
}