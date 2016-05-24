// Real-C
#include "ENGINE.hpp"

#include "globals.h"

TRIGGER( creation )()
{
  setType(this, 0x01);
  return(0x00);
}

TRIGGER( enterrange , 0x01 )(obj target)
{
  loc Q54M = loc( 0x140A, 0x038C, (0x00 - 0x16) );
  loc Q54P = loc( 0x1418, 0x031D, 0x16 );
  loc Q54Q = loc( 0x1420, 0x032A, (0x00 - 0x13) );
  loc Q54N = loc( 0x140D, 0x03D9, 0x16 );
  loc Q43K = loc( getLocation(this) );
  loc Q648;
  Q648 = loc( 0x00 - 0x01, 0x00 - 0x01, 0x00 );
  if(Q43K == Q54M)
  {
    Q648 = loc( 0x1417, 0x0322, 0x04 );
  }
  if(Q43K == Q54P)
  {
    Q648 = loc( 0x140A, 0x0387, 0x00 );
  }
  if(Q43K == Q54Q)
  {
    Q648 = loc( 0x1412, 0x03D9, 0x05 );
  }
  if(Q43K == Q54N)
  {
    Q648 = loc( 0x141C, 0x032A, 0x00 );
  }
  if(isInMap(Q648))
  {
    int r = teleport(target, Q648);
    return(!r);
  }
  return(0x01);
}