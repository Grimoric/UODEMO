// Real-C
#include "ENGINE.hpp"

#include "globals.h"

TRIGGER( creation )()
{
  multiCompSetSendSlave(this, 0x01);
  shortCallback(this, 0x01, 0x37);
  return(0x01);
}

TRIGGER( callback , 0x37 )()
{
  int Q5NC = teleport(this, getLocation(this));
  detachScript(this, "multiupdate");
  return(0x01);
}