// Real-C
#include "ENGINE.hpp"

#include "scrollbase.h"

TRIGGER( objectloaded )()
{
  Q41U(this);
  return(0x01);
}

TRIGGER( creation )()
{
  attachScript(this, "agility");
  setObjVar(this, "isScroll", 0x00);
  return(0x00);
}

TRIGGER( callback , 0x48 )()
{
  Q5QJ(this);
  return(0x00);
}