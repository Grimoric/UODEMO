// Real-C
#include "ENGINE.hpp"

#include "globals.h"

TRIGGER( enterrange , 0x00 )(obj target)
{
  bark(this, "success");
  return(0x01);
}