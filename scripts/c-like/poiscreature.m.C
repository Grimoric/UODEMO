// Real-C
#include "ENGINE.hpp"

#include "spelskil.h"

TRIGGER( mobishitting )(obj victim, int damage)
{
  int Q4AY = (getSkillLevel(this, 0x1E) / 0x04);
  if(random(0x00, 0x64) < Q4AY)
  {
    int strength = (getObjVar(this, "poison_hit_strength"));
    if((!hasObjVar(victim, "poison_strength")) && (!hasScript(victim, "poisoned")))
    {
      switch(strength)
      {
      case 0x01:
      case 0x02:
      case 0x03:
      case 0x04:
      case 0x05:
        setObjVar(victim, "poison_strength", strength);
        attachScript(victim, "poisoned");
        barkTo(victim, victim, "The " + getName(this) + " has just poisoned you!");
        break;
      default:
        setObjVar(victim, "poison_strength", 0x01);
        attachScript(victim, "poisoned");
        barkTo(victim, victim, "The " + getName(this) + " has just poisoned you!");
        break;
      }
    }
  }
  return(0x01);
}