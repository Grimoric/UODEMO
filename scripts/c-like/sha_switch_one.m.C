// Real-C
#include "ENGINE.hpp"

#include "globals.h"

TRIGGER( use )(obj user)
{
  list Q5DQ;
  loc trapLocation = loc( 0x154C, 0xBB, 0x00 );
  if(!hasObjVar(this, "switchWorking"))
  {
    setObjVar(this, "switchWorking", 0x01);
    messageToRange(trapLocation, 0x05, "disarm", Q5DQ);
    callback(this, 0x1E, 0x26);
    return(0x01);
  }
  return(0x00);
}

TRIGGER( callback , 0x26 )()
{
  list Q5DQ;
  loc trapLocation = loc( 0x154C, 0xBB, 0x00 );
  if(hasObjVar(this, "switchWorking"))
  {
    removeObjVar(this, "switchWorking");
    messageToRange(trapLocation, 0x05, "reset", Q5DQ);
  }
  return(0x00);
}