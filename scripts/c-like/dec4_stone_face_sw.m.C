// Real-C
#include "ENGINE.hpp"

#include "globals.h"

TRIGGER( use )(obj user)
{
  loc trapLocation = loc( 0x1491, 0x02B3, 0x00 );
  list Q5DQ;
  if(!hasObjVar(this, "working"))
  {
    setObjVar(this, "working", 0x01);
    messageToRange(trapLocation, 0x0B, "disarm", Q5DQ);
    setType(this, 0x1091);
    callback(this, 0x02, 0x24);
  }
  return(0x00);
}

TRIGGER( callback , 0x24 )()
{
  if(hasObjVar(this, "working"))
  {
    removeObjVar(this, "working");
  }
  if(getObjType(this) == 0x1091)
  {
    setType(this, 0x1092);
  }
  return(0x00);
}