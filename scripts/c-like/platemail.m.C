// Real-C
#include "ENGINE.hpp"

#include "spelskil.h"

MEMBER int Q4HY;

FUNCTION void Q5RL()
{
  if(!hasObjVar(this, "plateMailCost"))
  {
    Q4HY = (0x00 - 0x05);
  }
  else
  {
    Q4HY = getObjVar(this, "plateMailCost");
    Q4HY = (0x00 - Q4HY);
  }
  if(hasObjVar(this, "pmf"))
  {
    removeObjVar(this, "pmf");
  }
  return;
}

TRIGGER( creation )()
{
  Q5RL();
  return(0x01);
}

TRIGGER( objectloaded )()
{
  Q5RL();
  return(0x01);
}

TRIGGER( equip )(obj equippedon)
{
  Q43H(equippedon, 0x01, Q4HY);
  return(0x01);
}

TRIGGER( unequip )(obj unequippedfrom)
{
  int Q463 = 0x00 - Q4HY;
  Q43H(unequippedfrom, 0x01, Q463);
  return(0x01);
}