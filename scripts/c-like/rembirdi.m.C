// Real-C
#include "ENGINE.hpp"

#include "spelskil.h"

TRIGGER( callback , 0x2B )()
{
  closeGump(this, 0x1392);
  return(0x00);
}