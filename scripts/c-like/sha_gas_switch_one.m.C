// Real-C
#include "ENGINE.hpp"

#include "globals.h"

MEMBER loc trapLocation;
MEMBER list Q5DQ;

TRIGGER( creation )()
{
  trapLocation = loc( 0x15DE, 0x3F, 0x00 );
  return(0x00);
}

TRIGGER( use )(obj user)
{
  if(!hasObjVar(this, "switchWorking"))
  {
    setObjVar(this, "switchWorking", Q5DQ);
    messageToRange(trapLocation, 0x05, "disarm", Q5DQ);
    callback(this, 0xF0, 0x26);
    return(0x01);
  }
  return(0x00);
}

TRIGGER( callback , 0x26 )()
{
  if(hasObjVar(this, "switchWorking"))
  {
    removeObjVar(this, "switchWorking");
    messageToRange(trapLocation, 0x05, "reset", Q5DQ);
  }
  return(0x00);
}