// Real-C
#include "ENGINE.hpp"

#include "spelskil.h"

FUNCTION int Q4IW(obj user, loc place)
{
  list Q5HT;
  int defenseBonus;
  int Q5NC = 0x00;
  defenseBonus = (getSkillLevel(user, 0x19) / 0x0A);
  int Q4NC = 0x06 * getSkillLevel(user, 0x19) / 0x05;
  getMobsInRange(Q5HT, place, 0x02);
  for(int x = 0x00; x < numInList(Q5HT); x ++)
  {
    obj Q5HY = Q5HT[x];
    if(Q50G(Q5HY))
    {
      if(!(hasScript(Q5HY, "reflctor")))
      {
        if(!(hasScript(Q5HY, "remprtct")))
        {
          doMobAnimation(Q5HY, 0x375A, 0x09, 0x14, 0x00, 0x00);
          setObjVar(Q5HY, "defenseBonus", defenseBonus);
          int Q5BM = getNaturalAC(Q5HY) + defenseBonus;
          setNaturalAC(Q5HY, Q5BM);
          attachScript(Q5HY, "remprtct");
          int Q527 = Q41J(user, Q5HY, 0x00, this);
          callback(Q5HY, Q4NC, 0x13);
          sfx(place, 0x01F7, 0x00);
          Q5NC = 0x01;
        }
      }
    }
  }
  Q5UQ(this);
  return(Q5NC);
}