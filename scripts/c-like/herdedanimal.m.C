// Real-C
#include "ENGINE.hpp"

#include "globals.h"

TRIGGER( callback , 0x3F )()
{
  enableBehaviors(this);
  detachScript(this, "herdedanimal");
  return(0x00);
}