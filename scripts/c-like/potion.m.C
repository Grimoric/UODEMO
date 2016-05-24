// Real-C
#include "ENGINE.hpp"

#include "spelskil.h"

MEMBER int Q4NC;
MEMBER int Q5VX;
MEMBER int Q463;

TRIGGER( creation )()
{
  if(Q4NC == 0x00)
  {
    Q4NC = 0x1E;
  }
  if(Q463 == 0x00)
  {
    Q463 = 0x0F;
  }
  return(0x01);
}

FUNCTION int Q4H6(obj user)
{
  if(!getFreeHandSlot(user))
  {
    systemMessage(user, "You must have a free hand to drink a potion.");
    return(0x00);
  }
  if(random(0x00, 0x01) == 0x01)
  {
    sfx(getLocation(user), 0x30, 0x00);
  }
  else
  {
    sfx(getLocation(user), 0x31, 0x00);
  }
  animateMobile(user, 0x21, 0x02, 0x01, 0x00, 0x01);
  return(0x01);
}

TRIGGER( use )(obj user)
{
  int Q53K = Q463;
  if(hasObjVar(this, "power"))
  {
    Q53K = getObjVar(this, "power");
  }
  if(!Q4H6(user))
  {
    return(0x00);
  }
  setInvisible(user, 0x00);
  if(!Q41Q(user, Q5VX, Q53K, Q4NC))
  {
    systemMessage(user, "You are already under a similar effect.");
  }
  else
  {
    doMobAnimation(user, 0x375A, 0x0A, 0x0F, 0x00, 0x00);
    sfx(getLocation(user), Q4TA(Q5VX, Q53K), 0x00);
    obj Q4NN = createGlobalObjectOn(this, 0x0F0E);
    deleteObject(this);
  }
  return(0x00);
}