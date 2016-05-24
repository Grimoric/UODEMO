// Real-C
#include "ENGINE.hpp"

#include "globals.h"

TRIGGER( creation )()
{
  setType(this, 0x01);
  return(0x00);
}

TRIGGER( enterrange , 0x03 )(obj target)
{
  if(isDead(target))
  {
    return(0x01);
  }
  if(!hasObjVar(this, "disarmed"))
  {
    doLocAnimation(getLocation(this), 0x11A6, 0x04, 0x18, 0x00, 0x00);
    callBack(this, 0x03, 0x24);
  }
  return(0x01);
}

TRIGGER( enterrange , 0x01 )(obj target)
{
  if(isDead(target))
  {
    return(0x01);
  }
  if(!hasObjVar(this, "disarmed"))
  {
    doLocAnimation(getLocation(this), 0x11A6, 0x04, 0x18, 0x00, 0x00);
    callBack(this, 0x03, 0x24);
  }
  return(0x01);
}

TRIGGER( enterrange , 0x00 )(obj target)
{
  if(isDead(target))
  {
    return(0x01);
  }
  int damage;
  if(!hasObjVar(this, "disarmed"))
  {
    doLocAnimation(getLocation(this), 0x11A6, 0x04, 0x18, 0x00, 0x00);
    damage = dice(0x02, 0x14);
    loseHP(target, damage);
  }
  return(0x01);
}