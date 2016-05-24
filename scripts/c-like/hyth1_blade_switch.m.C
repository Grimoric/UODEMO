// Real-C
#include "ENGINE.hpp"

#include "globals.h"

TRIGGER( use )(obj user)
{
  list Q5DQ;
  int Q5A2 = getObjType(this);
  loc trapLocation = loc( 0x1764, 0x20, 0x16 );
  switch(Q5A2)
  {
  case 0x1093:
    messageToRange(trapLocation, 0x01, "disarm", Q5DQ);
    callback(this, 0x3C, 0x24);
    break;
  case 0x1095:
    messageToRange(trapLocation, 0x01, "reset", Q5DQ);
    break;
  default:
    break;
  }
  return(0x01);
}

TRIGGER( callback , 0x24 )()
{
  list Q5DQ;
  loc trapLocation = loc( 0x1764, 0x20, 0x16 );
  int Q5A2 = getObjType(this);
  if(Q5A2 == 0x1095)
  {
    setType(this, 0x1093);
    messageToRange(trapLocation, 0x01, "reset", Q5DQ);
  }
  return(0x00);
}