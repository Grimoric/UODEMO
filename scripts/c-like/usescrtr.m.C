// Real-C
#include "ENGINE.hpp"

#include "summoncr.h"

TRIGGER( creation )()
{
  setObjVar(this, "magicItemModifier", 0x05);
  shortcallback(this, 0x01, 0x2F);
  return(0x00);
}

TRIGGER( callback , 0x2F )()
{
  int charges = (getObjVar(this, "charges")) / 0x18;
  setObjVar(this, "charges", charges);
  return(0x00);
}

TRIGGER( use )(obj user)
{
  int charges = getObjVar(this, "charges");
  if(charges <= 0x00)
  {
    systemMessage(user, "This magic item is out of charges.");
    return(0x00);
  }
  Q4MF(user);
  charges = charges - 0x01;
  setObjVar(this, "charges", charges);
  returnResourcesToBank(this, 0x18, "magic");
  if(charges <= 0x00)
  {
    systemMessage(user, "This magic item is out of charges.");
  }
  return(0x00);
}