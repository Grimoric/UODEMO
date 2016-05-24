// Real-C
#include "ENGINE.hpp"

#include "globals.h"

TRIGGER( message , "allow" )(obj sender, list args)
{
  int i = 0x00;
  if(!hasObjVar(this, "allow"))
  {
    setObjVar(this, "allow", i);
    callback(this, 0x0258, 0x25);
  }
  return(0x00);
}

TRIGGER( callback , 0x25 )()
{
  if(hasObjVar(this, "allow"))
  {
    removeObjVar(this, "allow");
  }
  return(0x00);
}