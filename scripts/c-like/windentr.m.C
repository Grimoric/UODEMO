// Real-C
#include "ENGINE.hpp"

#include "sk_table.h"

TRIGGER( enterrange , 0x00 )(obj target)
{
  int Q4IA = (0x06 - 0x01) * 0x03E8 / 0x07;
  int Q4AY = getSkillSuccessChance(target, 0x19, Q4IA, 0x28);
  if(Q4AY > 0x01F4)
  {
    if(!hasObjVar(this, "dest"))
    {
      if(!hasObjVar(target, "justTriedToTeleportToWind"))
      {
        bark(this, "Please contact a gamemaster and let them know there is a bug here.");
      }
      setObjVar(target, "justTriedToTeleportToWind", 0x01);
      return(0x01);
    }
    loc destination = loc( getObjVar(this, "dest") );
    if(hasObjVar(target, "justTriedToTeleportToWind"))
    {
      removeObjVar(target, "justTriedToTeleportToWind");
    }
    int r = teleport(target, destination);
    if(r == 0x00)
    {
      if(!hasObjVar(target, "justTriedToTeleportToWind"))
      {
        bark(this, "You feel a gathering of magical energy around you, but it strangely dissipates with no effect.");
      }
      setObjVar(target, "justTriedToTeleportToWind", 0x01);
    }
  }
  else
  {
    if(!hasObjVar(target, "justTriedToTeleportToWind"))
    {
      bark(this, "You are not worthy of entrance to the city of Wind!");
    }
    setObjVar(target, "justTriedToTeleportToWind", 0x01);
  }
  return(0x00);
}

TRIGGER( leaverange , 0x02 )(obj target)
{
  if(hasObjVar(target, "justTriedToTeleportToWind"))
  {
    removeObjVar(target, "justTriedToTeleportToWind");
  }
  return(0x01);
}