// Real-C
#include "ENGINE.hpp"

#include "globals.h"

MEMBER int lockLevel;

TRIGGER( creation )()
{
  if(!hasObjVar(this, "isLocked"))
  {
    attachScript(this, "locked");
    lockLevel = random(0x00, 0xFE);
    setObjVar(this, "isLocked", lockLevel);
    setObjVar(this, "lockLevel", lockLevel);
  }
  return(0x00);
}

TRIGGER( callback , 0x25 )()
{
  if(!hasObjVar(this, "isLocked"))
  {
    setObjVar(this, "isLocked", lockLevel);
  }
  return(0x00);
}

TRIGGER( use )(obj user)
{
  if(!hasObjVar(this, "isLocked"))
  {
    callback(this, 0x3C, 0x25);
  }
  return(0x01);
}