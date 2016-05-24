// Real-C
#include "ENGINE.hpp"

#include "spelskil.h"

FUNCTION int Q4IV(obj user, loc Q5YM, int Q4PO)
{
  list Q5HT;
  loc Q4VS = loc( getLocation(user) );
  int Q5KQ;
  int Q5JC;
  int poison;
  int Q5NC = 0x00;
  if(Q4PO != 0x00)
  {
    Q5KQ = (Q4PO * 0x4B);
  }
  else
  {
    Q5KQ = (getSkillLevel(user, 0x19) * 0x4B);
  }
  faceHere(user, getDirectionInternal(Q4VS, Q5YM));
  getMobsInRange(Q5HT, Q5YM, 0x02);
  obj Q5HY;
  for(int x = 0x00; x < numInList(Q5HT); x ++)
  {
    Q5HY = Q5HT[x];
    poison = getObjVar(Q5HY, "poison_strength");
    Q5JC = (poison * 0x06D6);
    doMobAnimation(Q5HY, 0x373A, 0x0A, 0x0F, 0x00, 0x00);
    if(Q50G(Q5HY))
    {
      if((hasScript(Q5HY, "poisoned")) || (hasObjVar(Q5HY, "poison_strength")))
      {
        if(((0x2710 + (Q5KQ - Q5JC)) / 0x64) > random(0x01, 0x64))
        {
          Q660(Q5HY);
          int Q527 = Q41J(user, Q5HY, 0x00, this);
          systemMessage(Q5HY, " " + getName(user) + " has cured you of all poisons!");
        }
        else
        {
          systemMessage(Q5HY, " " + getName(user) + " has failed to cure you!");
        }
        Q5NC = 0x01;
      }
    }
  }
  sfx(Q5YM, 0x01E8, 0x00);
  Q5UQ(this);
  return(Q5NC);
}