// Real-C
#include "ENGINE.hpp"

TRIGGER( use )(obj user)
{
  bark(this, "I should be animating");
  doLocAnimation(getLocation(this), 0x10FE, 0x02, 0x14, 0x00, 0x00);
  return(0x00);
}