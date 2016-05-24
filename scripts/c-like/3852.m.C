// Real-C
#include "ENGINE.hpp"

#include "potion.h"

TRIGGER( creation )()
{
  return(0x00);
}

TRIGGER( use )(obj user)
{
  if(hasObjVar(user, "potionHealed"))
  {
    barkToHued(user, user, 0x22, "You must wait 10 seconds before using another healing potion.");
    return(0x00);
  }
  if(!Q4H6(user))
  {
    return(0x00);
  }
  if(Q4NQ(user) == 0x00)
  {
    return(0x00);
  }
  setInvisible(user, 0x00);
  int power = 0x64;
  if(hasObjVar(this, "power"))
  {
    power = getObjVar(this, "power");
  }
  int Q5MJ = random(power / 0x1E, power / 0x0A);
  addHP(user, Q5MJ);
  systemMessage(user, "" + Q5MJ + " points of damage have been healed.");
  obj Q4NN = createGlobalObjectAt(0x0F0E, getLocation(this));
  setObjVar(user, "potionHealed", 0x01);
  attachScript(user, "potiontime");
  callback(user, 0x0A, 0x57);
  deleteObject(this);
  return(0x00);
}