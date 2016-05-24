// Real-C
#include "ENGINE.hpp"

#include "sndfx.h"

TRIGGER( ooruse )(obj user)
{
  MEMBER obj Q646 = user;
  setObjVar(user, "oldBodyType", getObjType(user));
  setObjVar(user, "oldHue", getHue(user));
  setType(user, 0x3B);
  callBack(this, 0x0A, 0xC8);
  return(0x01);
}

TRIGGER( callback , 0xC8 )()
{
  setType(Q646, (getObjVar(Q646, "oldBodyType")));
  return(0x01);
}