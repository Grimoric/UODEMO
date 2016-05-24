// Real-C
#include "ENGINE.hpp"

#include "globals.h"

TRIGGER( callback , 0x08 )()
{
  deleteObject(this);
  return(0x00);
}