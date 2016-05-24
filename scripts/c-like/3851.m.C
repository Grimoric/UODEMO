// Real-C
#include "ENGINE.hpp"

#include "potion.h"

TRIGGER( use )(obj user)
{
  if(!Q4H6(user))
  {
    return(0x00);
  }
  setInvisible(user, 0x00);
  int Q4G5 = getCurFatigue(user);
  int Q56G = getMaxFatigue(user);
  int Q5NA = 0xFA;
  if(hasObjVar(this, "power"))
  {
    Q5NA = getObjVar(this, "power");
  }
  Q5NA = (Q56G - Q4G5) * Q5NA / 0x03E8;
  if((Q4G5 + Q5NA) < Q56G)
  {
    addFatigue(user, Q5NA);
  }
  else
  {
    setCurFatigue(user, Q56G);
  }
  obj Q4NN = createGlobalObjectOn(this, 0x0F0E);
  deleteObject(this);
  return(0x00);
}