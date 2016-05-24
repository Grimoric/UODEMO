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
  doLocAnimation(getLocation(this), 0x1145, 0x03, 0x10, 0x00, 0x00);
  return(0x01);
}

TRIGGER( enterrange , 0x01 )(obj target)
{
  if(isDead(target))
  {
    return(0x01);
  }
  doLocAnimation(getLocation(this), 0x1145, 0x03, 0x10, 0x00, 0x00);
  loseHP(target, dice(0x03, 0x0A));
  return(0x01);
}