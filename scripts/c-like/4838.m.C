// Real-C
#include "ENGINE.hpp"

#include "globals.h"

TRIGGER( use )(obj user)
{
  int Q68J;
  setType(this, 0x12E7);
  setType(this, 0x12E8);
  detachScript(this, "4838");
  return(0x00);
}