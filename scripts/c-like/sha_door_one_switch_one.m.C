// Real-C
#include "ENGINE.hpp"

#include "globals.h"

MEMBER loc Q4N2;
MEMBER list Q5DQ;

TRIGGER( creation )()
{
  Q4N2 = loc( 0x15C2, 0xC6, 0x00 );
  return(0x00);
}

TRIGGER( use )(obj user)
{
  if(!hasObjVar(this, "doorSwitchWorking"))
  {
    setObjVar(this, "doorSwitchWorking", 0x01);
    messageToRange(Q4N2, 0x01, "unlock", Q5DQ);
    callback(this, 0x1E, 0x26);
    return(0x01);
  }
  return(0x00);
}

TRIGGER( callback , 0x26 )()
{
  if(hasObjVar(this, "doorSwitchWorking"))
  {
    removeObjVar(this, "doorSwitchWorking");
    messageToRange(Q4N2, 0x01, "lockup", Q5DQ);
  }
  return(0x00);
}