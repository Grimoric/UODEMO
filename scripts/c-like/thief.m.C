// Real-C
#include "ENGINE.hpp"

TRIGGER( creation )()
{
  int Q4AY = random(0x01, 0x05);
  if(Q4AY == 0x01)
  {
    addFragment(this, "actor");
    return(0x00);
  }
  if(Q4AY == 0x02)
  {
    addFragment(this, "beggar");
    return(0x00);
  }
  if(Q4AY == 0x03)
  {
    addFragment(this, "gypsy");
    return(0x00);
  }
  if(Q4AY == 0x04)
  {
    addFragment(this, "artist");
    return(0x00);
  }
  if(Q4AY == 0x05)
  {
    addFragment(this, "laborer");
    return(0x00);
  }
  return(0x00);
}

TRIGGER( acquiredesire )(obj target)
{
  int Q5IR;
  obj thief;
  if(isPlayer(target))
  {
    if(hasObjVar(target, "guildMember"))
    {
      Q5IR = getObjVar(target, "guildMember");
    }
    if(Q5IR == 0x03)
    {
      return(0x01);
    }
    else
    {
      int Q5IQ = getMoney(target);
      int Q4PL = Q5IQ / 0x14;
      thief = takeMoney(target, Q4PL);
      string Q5WP = Q4PL;
      barkTo(this, target, "pilfered");
      stopFollowing(this);
      runAway(this, target);
    }
  }
  return(0x01);
}