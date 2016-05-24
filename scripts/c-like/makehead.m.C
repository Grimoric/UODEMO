// Real-C
#include "ENGINE.hpp"

TRIGGER( use )(obj user)
{
  obj head = createNoResObjectAt(0x1DA0, getLocation(user));
  setObjVar(head, "bountyObjID", user);
  return(0x01);
}