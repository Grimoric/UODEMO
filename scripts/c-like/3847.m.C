// Real-C
#include "ENGINE.hpp"

#include "potion.h"

TRIGGER( use )(obj user)
{
  int power = getObjVar(this, "power");
  int Q5K5 = (power * 0x4B);
  if(!Q4H6(user))
  {
    return(0x00);
  }
  setInvisible(user, 0x00);
  if((hasScript(user, "poisoned")) || (hasObjVar(user, "poison_strength")))
  {
    int poison = getObjVar(user, "poison_strength");
    int Q5JC = (poison * 0x06D6);
    if(((0x2710 + (Q5K5 - Q5JC)) / 0x64) > random(0x01, 0x64))
    {
      doMobAnimation(user, 0x373A, 0x0A, 0x0F, 0x00, 0x00);
      sfx(getLocation(user), 0x01E0, 0x00);
      Q660(user);
      systemMessage(user, "You feel cured of poison!");
    }
    else
    {
      systemMessage(user, "That potion was not strong enough to cure your ailment!");
    }
  }
  obj Q5Z4 = createGlobalObjectOn(this, 0x0F0E);
  destroyOne(this);
  return(0x00);
}