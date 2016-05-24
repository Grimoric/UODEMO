// Real-C
#include "ENGINE.hpp"

#include "multistuff.h"

MEMBER int Q4H2;

TRIGGER( decay )(int oldvalue, int newvalue)
{
  obj Q5AK = getMultiSlaveId(this);
  resetMultiCarriedDecay(Q5AK);
  int Q4H4 = 0x01;
  intRet(Q4H4);
  return(0x01);
}