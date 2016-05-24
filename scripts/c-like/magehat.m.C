// Real-C
#include "ENGINE.hpp"

#include "spelskil.h"

MEMBER int Q4N4;
MEMBER int Q66A;

TRIGGER( creation )()
{
  Q4N4 = 0x00 - 0x05;
  Q66A = 0x05;
  setObjVar(this, "lookAtText", "a magical wizard's hat");
  return(0x01);
}

TRIGGER( objectloaded )()
{
  Q4N4 = 0x00 - 0x05;
  Q66A = 0x05;
  return(0x01);
}

TRIGGER( equip )(obj equippedon)
{
  for(int s = 0x00; s < 0x02; s ++)
  {
    Q43H(equippedon, s, Q4N4);
  }
  Q43H(equippedon, 0x02, Q66A);
  return(0x01);
}

TRIGGER( unequip )(obj unequippedfrom)
{
  int Q5NN = 0x00 - Q4N4;
  int Q5NP = 0x00 - Q66A;
  for(int s = 0x00; s < 0x02; s ++)
  {
    Q43H(unequippedfrom, s, Q5NN);
  }
  Q43H(unequippedfrom, 0x02, Q5NP);
  return(0x01);
}