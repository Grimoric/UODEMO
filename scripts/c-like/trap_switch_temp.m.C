// Real-C
#include "ENGINE.hpp"

#include "globals.h"

FUNCTION int Q4TE(int Q5F8)
{
  int Q63F;
  if(Q5F8 == 0x1092)
  {
    Q63F = 0x1091;
  }
  if(Q5F8 == 0x1091)
  {
    Q63F = 0x1092;
  }
  if(Q5F8 == 0x108F)
  {
    Q63F = 0x1090;
  }
  if(Q5F8 == 0x1090)
  {
    Q63F = 0x108F;
  }
  return(Q63F);
}

TRIGGER( use )(obj user)
{
  int Q5F8 = getObjType(this);
  int Q63F = Q4TE(getObjType(this));
  setType(this, Q63F);
  return(0x01);
}