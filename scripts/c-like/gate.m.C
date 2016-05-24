// Real-C
#include "ENGINE.hpp"

#include "spelskil.h"

TRIGGER( enterrange , 0x00 )(obj target)
{
  int Q5ZL;
  Q5ZL = teleport(target, getObjVar(this, "destination"));
  return(0x01);
}