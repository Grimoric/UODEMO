// Real-C
#include "ENGINE.hpp"

#include "globals.h"

TRIGGER( message , "disarm" )(obj sender, list args)
{
  if(!hasObjVar(this, "disarmed"))
  {
    setObjVar(this, "disarmed", 0x01);
  }
  return(0x00);
}

TRIGGER( message , "reset" )(obj sender, list args)
{
  if(hasObjVar(this, "disarmed"))
  {
    removeObjVar(this, "disarmed");
  }
  return(0x00);
}