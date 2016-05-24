// Real-C
#include "ENGINE.hpp"

#include "globals.h"

TRIGGER( enterrange , 0x01 )(obj target)
{
  loc Q648;
  loc Q59R = loc( getLocation(this) );
  loc Q52X = loc( 0x1461, 0x024B, (0x00 - 0x14) );
  loc Q530 = loc( 0x14B9, 0x0213, 0x0A );
  loc Q531 = loc( 0x14E3, 0x0242, (0x00 - 0x14) );
  loc Q52Z = loc( 0x1411, 0x028A, 0x0F );
  loc Q52Y = loc( 0x1462, 0x02FA, (0x00 - 0x23) );
  loc Q52V = loc( 0x14BA, 0x0289, 0x0F );
  loc Q64A = loc( 0x1461, 0x0246, 0x00 );
  loc Q64D = loc( 0x14B9, 0x0216, 0x00 );
  loc Q64E = loc( 0x14DE, 0x0242, 0x00 );
  loc Q64C = loc( 0x1415, 0x028A, 0x00 );
  loc Q64B = loc( 0x1462, 0x02F6, (0x00 - 0x14) );
  loc Q649 = loc( 0x14BA, 0x028E, 0x00 );
  if(Q59R == Q52X)
  {
    Q648 = loc( Q64D );
  }
  if(Q59R == Q530)
  {
    Q648 = loc( Q64A );
  }
  if(Q59R == Q531)
  {
    Q648 = loc( Q64C );
  }
  if(Q59R == Q52Z)
  {
    Q648 = loc( Q64E );
  }
  if(Q59R == Q52Y)
  {
    Q648 = loc( Q649 );
  }
  if(Q59R == Q52V)
  {
    Q648 = loc( Q64B );
  }
  if(!teleport(target, Q648))
  {
    return(0x01);
  }
  return(0x00);
}