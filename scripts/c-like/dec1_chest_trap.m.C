// Real-C
#include "ENGINE.hpp"

#include "globals.h"

TRIGGER( use )(obj user)
{
  list Q5DQ;
  if(!hasObjVar(this, "unlocked"))
  {
    bark(this, "This chest seems to be locked.");
    return(0x00);
  }
  messageToRange(getLocation(this), 0x03, "chest_wall_fire_check", Q5DQ);
  return(0x01);
}

TRIGGER( message , "chest_unlocked" )(obj sender, list args)
{
  int Q5DQ;
  if(!hasObjVar(this, "unlocked"))
  {
    setObjVar(this, "unlocked", Q5DQ);
  }
  return(0x00);
}

TRIGGER( message , "chest_locked" )(obj sender, list args)
{
  if(hasObjVar(this, "unlocked"))
  {
    removeObjVar(this, "unlocked");
  }
  return(0x00);
}