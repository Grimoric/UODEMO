// Real-C
#include "ENGINE.hpp"

TRIGGER( use )(obj user)
{
  if(!hasObjVar(this, "creatureTemplate"))
  {
    return(0x01);
  }
  int Q4FB = getObjVar(this, "creatureTemplate");
  obj Q5BL = createGlobalNPCAt(Q4FB, getLocation(user), 0x00);
  return(0x01);
}