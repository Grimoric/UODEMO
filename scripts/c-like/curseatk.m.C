// Real-C
#include "ENGINE.hpp"

#include "spelskil.h"

MEMBER int Q688;
MEMBER int Q472;

TRIGGER( equip )(obj equippedon)
{
  list Q57J = list( 0x0F4F, 0x0F50, 0x13B1, 0x13B2, 0x13FC, 0x13FD );
  int weapon = getObjType(this);
  Q472 = 0xC8;
  for(int Q624 = 0x00; Q624 < numInList(Q57J); Q624 ++)
  {
    int Q4GB = Q57J[Q624];
    if(Q4GB == weapon)
    {
      Q688 = 0x01;
    }
  }
  if(Q688 == 0x01)
  {
    loseSkillLevel(equippedon, 0x1F, Q472);
  }
  else
  {
    loseSkillLevel(equippedon, 0x1B, Q472);
  }
  return(0x01);
}

TRIGGER( unequip )(obj unequippedfrom)
{
  Q472 = 0xC8;
  if(Q688 == 0x01)
  {
    addSkillLevel(unequippedfrom, 0x1F, Q472);
  }
  else
  {
    addSkillLevel(unequippedfrom, 0x1B, Q472);
  }
  return(0x01);
}