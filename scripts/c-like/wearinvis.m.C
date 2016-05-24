// Real-C
#include "ENGINE.hpp"

#include "spelskil.h"

TRIGGER( creation )()
{
  shortcallback(this, 0x01, 0x2F);
  return(0x01);
}

TRIGGER( callback , 0x2F )()
{
  int Q54U;
  int Q4Q1 = getResource(Q54U, this, "magic", 0x03, 0x02);
  int charges = Q54U / 0x03;
  setObjVar(this, "charges", charges);
  return(0x01);
}

FUNCTION int Q53Z()
{
  int charges = getObjVar(this, "charges");
  returnResourcesToBank(this, 0x03, "magic");
  if(charges <= 0x00)
  {
    removeObjVar(this, "charges");
  }
  else
  {
    setObjVar(this, "charges", charges - 0x01);
  }
  return(charges);
}

TRIGGER( equip )(obj equippedon)
{
  if(Q53Z())
  {
    setInvisible(equippedon, 0x01);
  }
  else
  {
    detachScript(this, "wearinvis");
  }
  return(0x01);
}

TRIGGER( unequip )(obj unequippedfrom)
{
  setInvisible(unequippedfrom, 0x00);
  return(0x01);
}

TRIGGER( time , "min:*0" )()
{
  if(isEquipped(this))
  {
    if(!Q53Z())
    {
      setInvisible(containedBy(this), 0x00);
      detachScript(this, "wearinvis");
    }
  }
  return(0x01);
}