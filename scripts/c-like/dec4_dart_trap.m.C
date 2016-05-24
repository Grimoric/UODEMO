// Real-C
#include "ENGINE.hpp"

#include "sndfx.h"

TRIGGER( enterrange , 0x01 )(obj target)
{
  if(!isPlayer(target))
  {
    return(0x00);
  }
  sfx(getLocation(this), 0x0223, 0x00);
  doLocAnimation(getLocation(this), 0x112C, 0x02, 0x03, 0x00, 0x00);
  loseHP(target, dice(0x02, 0x04));
  return(0x00);
}