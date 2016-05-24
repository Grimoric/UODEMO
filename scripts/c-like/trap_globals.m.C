// Real-C
#include "ENGINE.hpp"

#include "globals.h"

FORWARD void Q4DB();
FORWARD int Q4YA(obj , obj );

FUNCTION void Q4DB()
{
  removeObjVar(this, "trapLevel");
  removeObjVar(this, "trapType");
  return;
}

FUNCTION int Q4YA(obj user, obj this)
{
  int locked = 0x00;
  if(hasObjVar(this, "isLocked"))
  {
    locked = getObjVar(this, "isLocked");
  }
  return(locked);
}

TRIGGER( creation )()
{
  setObjVar(this, "isTrap", 0x01);
  return(0x00);
}

TRIGGER( use )(obj user)
{
  list Q63G;
  Q63G = list( user, this );
  if(!hasObjVar(this, "disabled"))
  {
    message(this, "triggerTrap", Q63G);
  }
  return(0x01);
}