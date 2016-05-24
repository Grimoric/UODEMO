// Real-C
#include "ENGINE.hpp"

#include "spelskil.h"

FUNCTION void Q4KR(obj user, obj usedon)
{
  restoreMana(usedon);
  setCurMana(usedon, 0x5A);
  return;
}

TRIGGER( use )(obj user)
{
  targetObj(user, this);
  return(0x00);
}

TRIGGER( targetobj )(obj user, obj usedon)
{
  Q4KR(user, usedon);
  return(0x00);
}