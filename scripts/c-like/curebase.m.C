// Real-C
#include "ENGINE.hpp"

#include "spelskil.h"

FUNCTION int Q4JD(obj user, obj usedon, int Q4PO)
{
  int Q5NC = 0x00;
  if(Q50G(usedon))
  {
    loc Q4VS = loc( getLocation(user) );
    loc there = loc( getLocation(usedon) );
    int Q5KQ;
    int poison = getObjVar(usedon, "poison_strength");
    int Q5JC = (poison * 0x06D6);
    if(Q4PO != 0x00)
    {
      Q5KQ = (Q4PO * 0x4B);
    }
    else
    {
      Q5KQ = (getSkillLevel(user, 0x19) * 0x4B);
    }
    faceHere(user, getDirectionInternal(Q4VS, there));
    doMobAnimation(usedon, 0x373A, 0x0A, 0x0F, 0x00, 0x00);
    sfx(there, 0x01E0, 0x00);
    if((hasScript(usedon, "poisoned")) || (hasObjVar(usedon, "poison_strength")))
    {
      Q5NC = 0x01;
      if(((0x2710 + (Q5KQ - Q5JC)) / 0x64) > random(0x01, 0x64))
      {
        Q660(usedon);
        int Q527 = Q41J(user, usedon, 0x00, this);
        systemMessage(user, "You have cured " + getName(usedon) + " of all poisons!");
        systemMessage(usedon, " " + getName(user) + " has cured you of all poisons!");
      }
      else
      {
        systemMessage(user, "You have failed to cure " + getName(usedon) + "!");
      }
    }
  }
  Q5UQ(this);
  return(Q5NC);
}