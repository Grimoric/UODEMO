// Real-C
#include "ENGINE.hpp"

#include "spelskil.h"

TRIGGER( creation )()
{
  int Q4G7 = getWeaponMaxHP(this);
  int Q5BV = Q4G7 + 0x0A;
  int dummy = setWeaponMaxHP(this, Q5BV);
  return(0x00);
}