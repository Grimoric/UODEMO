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
  if(!hasObjVar(this, "working"))
  {
    list Q53C = list( target );
    setObjVar(this, "working", Q53C);
    setType(this, 0x373A);
    callback(this, 0x05, 0x24);
  }
  return(0x01);
}

TRIGGER( callback , 0x24 )()
{
  list Q67G;
  getObjListVar(Q67G, this, "working");
  obj Q67D = Q67G[0x00];
  loc Q59R = loc( getLocation(this) );
  loc Q648;
  loc Q5YY = loc( 0x1583, 0xA2, 0x05 );
  loc Q5YZ = loc( 0x157A, 0xB2, 0x05 );
  removeObjVar(this, "working");
  clearList(Q67G);
  getMobsInRange(Q67G, Q59R, 0x02);
  if(!isInList(Q67G, Q67D))
  {
    setType(this, 0x01);
    return(0x00);
  }
  if(Q59R == Q5YY)
  {
    Q648 = loc( Q5YZ );
  }
  if(Q59R == Q5YZ)
  {
    Q648 = loc( Q5YY );
  }
  if(!teleport(Q67D, Q648))
  {
    return(0x01);
  }
  setType(this, 0x01);
  return(0x00);
}