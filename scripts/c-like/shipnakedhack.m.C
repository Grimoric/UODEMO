// Real-C
#include "ENGINE.hpp"

#include "globals.h"

TRIGGER( serverswitch )()
{
  shortcallback(this, 0x08, 0x5E);
  return(0x01);
}

TRIGGER( callback , 0x5E )()
{
  sendPlayerZmoveStuff(this);
  detachScript(this, "shipnakedhack");
  return(0x01);
}