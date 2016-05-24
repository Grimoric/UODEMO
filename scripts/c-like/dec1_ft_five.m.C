// Real-C
#include "ENGINE.hpp"

#include "sndfx.h"

TRIGGER( enterrange , 0x00 )(obj target)
{
  list Q5DQ;
  sfx(getLocation(this), 0x0122, 0x00);
  messageToRange(getLocation(this), 0x05, "saws_on", Q5DQ);
  doLocAnimation(getLocation(this), 0x1123, 0x02, 0x08, 0x00, 0x00);
  return(0x01);
}