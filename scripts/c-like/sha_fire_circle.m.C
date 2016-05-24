// Real-C
#include "ENGINE.hpp"

TRIGGER( message , "poof" )(obj sender, list args)
{
  list Q67G;
  obj Q67D;
  loc Q59R = loc( getLocation(this) );
  doLocAnimation(Q59R, 0x3709, 0x01, 0x0100, 0x00, 0x00);
  getMobsInRange(Q67G, Q59R, 0x01);
  if(numInList(Q67G) != 0x00)
  {
    for(int i = 0x00; i < numInList(Q67G); i ++)
    {
      Q67D = Q67G[i];
      loseHP(Q67D, dice(0x08, 0x08));
    }
  }
  return(0x00);
}