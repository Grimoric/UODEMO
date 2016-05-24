// Real-C
#include "ENGINE.hpp"

#include "spelskil.h"

MEMBER int Q5FY;

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
    Q5FY = getLightVal(equippedon);
    setLight(equippedon, 0x0F, 0x01);
  }
  else
  {
    setLight(equippedon, Q5FY, 0x01);
    detachScript(this, "wearlight");
  }
  return(0x01);
}

TRIGGER( unequip )(obj unequippedfrom)
{
  setLight(unequippedfrom, Q5FY, 0x01);
  return(0x01);
}

TRIGGER( time , "min:*0" )()
{
  if(isEquipped(this))
  {
    if(!Q53Z())
    {
      setLight(containedBy(this), Q5FY, 0x01);
      detachScript(this, "wearlight");
    }
  }
  return(0x01);
}