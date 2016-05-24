// Real-C
#include "ENGINE.hpp"

#include "spelskil.h"

FUNCTION void Q424(obj Q4XN, int val)
{
  int Q5D0 = getMaxArmorClass(Q4XN);
  Q5D0 = Q5D0 + val;
  int Q5NC = setMaxArmorClass(this, Q5D0);
  return;
}