// Real-C
#include "ENGINE.hpp"

#include "globals.h"

TRIGGER( use )(obj user)
{
  loc toLocation = loc( 0x1581, 0x0271, 0x1E );
  if(!hasObjVar(this, "working"))
  {
    setObjVar(this, "working", 0x01);
    setType(this, 0x1091);
    callback(this, 0x03, 0x24);
    doLocAnimation(getLocation(user), 0x373A, 0x01, 0x18, 0x00, 0x00);
    doLocAnimation(toLocation, 0x373A, 0x01, 0x18, 0x00, 0x00);
    if(!teleport(user, toLocation))
    {
      return(0x01);
    }
  }
  return(0x00);
}

TRIGGER( callback , 0x24 )()
{
  if(hasObjVar(this, "working"))
  {
    removeObjVar(this, "working");
    setType(this, 0x1092);
  }
  return(0x00);
}