// Real-C
#include "ENGINE.hpp"

#include "allstatbase.h"

FUNCTION int Q4J0(obj user, obj usedon, int Q5NM)
{
  int Q5NC = 0x00;
  if(Q4IT(user, usedon, 0x01, Q5NM))
  {
    int Q527 = Q41J(user, usedon, Q5NM, this);
    Q5NC = 0x01;
  }
  return(Q5NC);
}