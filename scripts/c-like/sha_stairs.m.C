// Real-C
#include "ENGINE.hpp"

#include "globals.h"

TRIGGER( enterrange , 0x01 )(obj target)
{
  loc Q648;
  loc Q59R = loc( getLocation(this) );
  loc Q52X = loc( 0x1573, 0x12, (0x00 - 0x34) );
  loc Q530 = loc( 0x1588, 0x08, 0x00 );
  loc Q531 = loc( 0x1588, 0x94, 0x14 );
  loc Q52Z = loc( 0x15E2, 0x65, (0x00 - 0x17) );
  loc Q52Y = loc( 0x16F1, 0x11, 0x0A );
  loc Q52V = loc( 0x158C, 0xAE, (0x00 - 0x17) );
  loc Q64D = loc( 0x158B, 0x08, 0x00 );
  loc Q64A = loc( 0x1570, 0x12, (0x00 - 0x1E) );
  loc Q64C = loc( 0x15E0, 0x65, 0x00 );
  loc Q64E = loc( 0x1589, 0x94, 0x14 );
  loc Q649 = loc( 0x1587, 0xAF, 0x00 );
  loc Q64B = loc( 0x16F6, 0x12, (0x00 - 0x0A) );
  if(Q59R == Q52X)
  {
    Q648 = loc( Q64D );
  }
  else
  {
    if(Q59R == Q530)
    {
      Q648 = loc( Q64A );
    }
    else
    {
      if(Q59R == Q531)
      {
        Q648 = loc( Q64C );
      }
      else
      {
        if(Q59R == Q52Z)
        {
          Q648 = loc( Q64E );
        }
        else
        {
          if(Q59R == Q52Y)
          {
            Q648 = loc( Q649 );
          }
          else
          {
            if(Q59R == Q52V)
            {
              Q648 = loc( Q64B );
            }
            else
            {
              bark(this, "Not a supported teleporter location.");
              return(0x01);
            }
          }
        }
      }
    }
  }
  if(!teleport(target, Q648))
  {
    return(0x01);
  }
  return(0x00);
}