// Real-C
#include "ENGINE.hpp"

TRIGGER( enterrange , 0x02 )(obj target)
{
  if(isDead(target))
  {
    return(0x01);
  }
  if(!hasObjVar(this, "working"))
  {
    setObjVar(this, "working", 0x01);
    callback(this, 0x02, 0x01);
    doLocAnimation(getLocation(this), 0x1126, 0x03, 0x09, 0x00, 0x00);
    loseHP(target, dice(0x02, 0x04));
  }
  return(0x01);
}

TRIGGER( callback , 0x01 )()
{
  if(hasObjVar(this, "working"))
  {
    removeObjVar(this, "working");
  }
  return(0x00);
}