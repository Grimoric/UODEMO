// Real-C
#include "ENGINE.hpp"

#include "manadran.h"

TRIGGER( use )(obj user)
{
  int charges = getObjVar(this, "charges");
  if(charges <= 0x00)
  {
    systemMessage(user, "This magic item is out of charges.");
    return(0x00);
  }
  Q4WO(user, this);
  shortcallback(this, 0x01, 0x2F);
  return(0x00);
}

TRIGGER( callback , 0x2F )()
{
  int Q54U;
  int Q4Q1 = getResource(Q54U, this, "magic", 0x03, 0x02);
  int charges = Q54U / 0x0F;
  setObjVar(this, "charges", charges);
  return(0x00);
}

TRIGGER( targetobj )(obj user, obj usedon)
{
  int charges = getObjVar(this, "charges");
  if(charges <= 0x00)
  {
    systemMessage(user, "This magic item is out of charges.");
    return(0x00);
  }
  if(!Q49W(this, user, usedon, 0x00))
  {
    return(0x00);
  }
  if(hasScript(usedon, "reflctor"))
  {
    doMobAnimation(usedon, 0x37B9, 0x0A, 0x05, 0x00, 0x00);
    Q4KQ(usedon, user, 0x01);
    detachScript(usedon, "reflctor");
  }
  else
  {
    Q4KQ(user, usedon, 0x00);
  }
  charges = charges - 0x01;
  setObjVar(this, "charges", charges);
  returnResourcesToBank(this, 0x0F, "magic");
  if(charges <= 0x00)
  {
    systemMessage(user, "This magic item is out of charges.");
  }
  return(0x00);
}