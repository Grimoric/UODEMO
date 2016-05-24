// Real-C
#include "ENGINE.hpp"

#include "globals.h"

TRIGGER( creation )()
{
  switch(random(0x01, 0x08))
  {
  case 0x01:
    setHue(this, random(0x0641, 0x0676));
    break;
  case 0x02:
    setHue(this, random(0x0515, 0x054A));
    break;
  case 0x03:
    setHue(this, random(0x0579, 0x05A7));
    break;
  case 0x04:
    setHue(this, random(0x05DD, 0x060B));
    break;
  case 0x05:
    setHue(this, random(0x04B1, 0x04DF));
    break;
  case 0x06:
    setHue(this, random(0x0961, 0x097E));
    break;
  case 0x07:
    setHue(this, random(0x0899, 0x08B0));
    break;
  default:
    setHue(this, random(0x044E, 0x047C));
    break;
  }
  setObjVar(this, "lookAtText", "hair dye");
  setObjVar(this, "mybasevalue", 0x14);
  return(0x01);
}

TRIGGER( use )(obj user)
{
  int Q4DR = getHue(this);
  int Q4UV;
  int Q482;
  obj Q4UP = getItemAtSlot(user, 0x0B);
  obj Q481 = getItemAtSlot(user, 0x10);
  if(Q4UP != NULL())
  {
    if(!hasObjVar(Q4UP, "oldhue"))
    {
      Q4UV = getHue(Q4UP);
      setObjVar(Q4UP, "oldhue", Q4UV);
    }
    setHue(Q4UP, Q4DR);
    callback(Q4UP, 0x0BB8, 0x00);
    attachScript(Q4UP, "hairundye");
  }
  if(Q481 != NULL())
  {
    if(!hasObjVar(Q481, "oldhue"))
    {
      Q482 = getHue(Q481);
      setObjVar(Q481, "oldhue", Q482);
    }
    callback(Q481, 0x0BB8, 0x00);
    attachScript(Q481, "hairundye");
    setHue(Q481, Q4DR);
  }
  deleteObject(this);
  return(0x01);
}