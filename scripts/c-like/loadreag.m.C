// Real-C
#include "ENGINE.hpp"

#include "spelskil.h"

FUNCTION void Q4KH(obj usedon)
{
  int dummy;
  for(int i = 0x00; i < 0x0B; i ++)
  {
    obj Q5LF = requestCreateObjectIn(0x0F7A, usedon);
    if(Q5LF == NULL())
    {
      return;
    }
    obj Q5LG = requestCreateObjectIn(0x0F7B, usedon);
    if(Q5LG == NULL())
    {
      return;
    }
    obj Q5LH = requestCreateObjectIn(0x0F84, usedon);
    if(Q5LH == NULL())
    {
      return;
    }
    obj Q5LI = requestCreateObjectIn(0x0F85, usedon);
    if(Q5LI == NULL())
    {
      return;
    }
    obj Q5LJ = requestCreateObjectIn(0x0F86, usedon);
    if(Q5LJ == NULL())
    {
      return;
    }
    obj Q5LK = requestCreateObjectIn(0x0F88, usedon);
    if(Q5LK == NULL())
    {
      return;
    }
    obj Q5LL = requestCreateObjectIn(0x0F8C, usedon);
    if(Q5LL == NULL())
    {
      return;
    }
    obj Q5LM = requestCreateObjectIn(0x0F8D, usedon);
    if(Q5LM == NULL())
    {
      return;
    }
  }
  return;
}

TRIGGER( creation )()
{
  Q4KH(this);
  return(0x00);
}