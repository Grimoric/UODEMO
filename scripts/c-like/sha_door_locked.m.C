// Real-C
#include "ENGINE.hpp"

TRIGGER( creation )()
{
  setObjVar(this, "isLocked", 0x0100);
  return(0x00);
}

TRIGGER( use )(obj user)
{
  if(hasObjVar(this, "isLocked"))
  {
    bark(this, "It appears to be locked.");
    return(0x00);
  }
  return(0x01);
}

TRIGGER( message , "unlock" )(obj sender, list args)
{
  if(hasObjVar(this, "isLocked"))
  {
    removeObjVar(this, "isLocked");
  }
  return(0x00);
}

TRIGGER( message , "reset" )(obj sender, list args)
{
  if(!hasObjVar(this, "isLocked"))
  {
    setObjVar(this, "isLocked", 0x0100);
  }
  return(0x00);
}