// Real-C
#include "ENGINE.hpp"

#include "globals.h"

FUNCTION void Q5XR(obj Q5G0, int newType)
{
  int Q5G2 = getObjType(Q5G0);
  string Q5WW = Q5G2;
  string Q5WV = newType;
  if(Q5G2 != newType)
  {
    setType(Q5G0, newType);
    attachScript(Q5G0, Q5WV);
    detachScript(Q5G0, Q5WW);
  }
  return;
}