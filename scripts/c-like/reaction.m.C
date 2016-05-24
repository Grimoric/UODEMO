// Real-C
#include "ENGINE.hpp"

#include "spelskil.h"

TRIGGER( objectloaded )()
{
  detachScript(this, "reaction");
  return(0x01);
}

TRIGGER( washit )(obj attacker, int damamt)
{
  if(isValid(attacker))
  {
    if(!isGuard(attacker))
    {
      loc there = loc( getLocation(attacker) );
      loc Q4VS = loc( getLocation(this) );
      if(getDistanceInTiles(Q4VS, there) <= 0x01)
      {
        int Q5HV = 0x0A + getSkillLevel(this, 0x19) / 0x04;
        int Q474 = damamt * Q5HV / 0x64;
        int Q5YD = damamt - Q474;
        doMobAnimation(attacker, 0x374A, 0x0A, 0x0F, 0x00, 0x00);
        sfx(getLocation(attacker), 0x01F1, 0x00);
        if(Q474 > 0x00)
        {
          doDamage(NULL(), attacker, Q474);
        }
        intRet(Q5YD);
      }
    }
  }
  return(0x00);
}

TRIGGER( callback , 0x2F )()
{
  sfx(getLocation(this), 0x5C, 0x00);
  if(hasScript(this, "remreact"))
  {
    detachScript(this, "remreact");
  }
  if(hasScript(this, "reaction"))
  {
    detachScript(this, "reaction");
  }
  return(0x00);
}