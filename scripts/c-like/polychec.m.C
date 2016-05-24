// Real-C
#include "ENGINE.hpp"

#include "spelskil.h"

MEMBER int Q4MY;

TRIGGER( callback , 0x71 )()
{
  detachScript(this, "polychec");
  return(0x01);
}

FUNCTION void Q5ME(obj it)
{
  if(Q4MY)
  {
    return;
  }
  int Q51J;
  list Q5FK;
  string Q53Y;
  int Q5JI;
  int objSlot;
  if(hasObjVar(it, "oldBodyType"))
  {
    setType(it, getObjVar(it, "oldBodyType"));
    removeObjVar(it, "oldBodyType");
  }
  if(hasObjVar(it, "oldHue"))
  {
    setHue(it, getObjVar(it, "oldHue"));
    removeObjVar(it, "oldHue");
  }
  if(hasObjListVar(it, "notMyItems"))
  {
    getObjListVar(Q5FK, it, "notMyItems");
    removeObjVar(it, "notMyItems");
  }
  Q5JI = numInList(Q5FK);
  for(int x = 0x00; x < Q5JI; x ++)
  {
    objSlot = getObjVar(Q5FK[x], "objSlot");
    removeObjVar(Q5FK[x], "objSlot");
    Q51J = equipObj(Q5FK[x], it, objSlot);
  }
  shortcallback(it, 0x01, 0x71);
  Q4MY = 0x01;
  return;
}

TRIGGER( death )(obj attacker, obj corpse)
{
  Q5ME(this);
  return(0x01);
}

TRIGGER( callback , 0x14 )()
{
  Q5ME(this);
  return(0x00);
}