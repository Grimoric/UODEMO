// Real-C
#include "ENGINE.hpp"

#include "globals.h"

TRIGGER( callback , 0x1B )()
{
  deleteObject(this);
  return(0x01);
}