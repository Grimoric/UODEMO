// Real-C
#include "ENGINE.hpp"

#include "sndfx.h"

TRIGGER( message , "disarm" )(obj sender, list args)
{
  if(!hasObjVar(this, "disarmed"))
  {
    setObjVar(this, "disarmed", 0x01);
    callBack(this, 0x3C, 0x24);
  }
  return(0x00);
}

TRIGGER( callback , 0x24 )()
{
  if(hasObjVar(this, "disarmed"))
  {
    removeObjVar(this, "disarmed");
  }
  return(0x00);
}

TRIGGER( enterrange , 0x01 )(obj target)
{
  if(!hasObjVar(this, "disarmed"))
  {
    loc Q61U = loc( getLocation(this)/* replaced - with = */ );
    sfx(Q61U, 0x022D, 0x00);
    doLocAnimation(Q61U, 0x11A1, 0x01, 0x0E, 0x00, 0x00);
  }
  return(0x01);
}

TRIGGER( enterrange , 0x00 )(obj target)
{
  if(!hasObjVar(this, "disarmed"))
  {
    loc Q61U = loc( getLocation(this)/* replaced - with = */ );
    sfx(Q61U, 0x022D, 0x00);
    doLocAnimation(Q61U, 0x11A1, 0x01, 0x0E, 0x00, 0x00);
    loseHP(target, dice(0x0A, 0x05));
  }
  return(0x01);
}