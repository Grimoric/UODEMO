// Real-C
#include "ENGINE.hpp"

#include "spelskil.h"

MEMBER int Q463;
MEMBER int Q5VX;

TRIGGER( creation )()
{
  Q5VX = 0x01;
  Q463 = 0x0A;
  return(0x01);
}

TRIGGER( equip )(obj equippedon)
{
  Q43H(equippedon, Q5VX, Q463);
  return(0x01);
}

TRIGGER( unequip )(obj unequippedfrom)
{
  Q43H(unequippedfrom, Q5VX, 0x00 - Q463);
  return(0x01);
}