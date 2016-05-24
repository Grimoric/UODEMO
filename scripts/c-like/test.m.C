// Real-C
#include "ENGINE.hpp"

TRIGGER( use )(obj user)
{
  doLocAnimation(getLocation(this), 0x3709, 0x02, 0x38, 0x00, 0x00);
  return(0x00);
}