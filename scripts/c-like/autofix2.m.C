// Real-C
#include "ENGINE.hpp"

#include "globals.h"

FUNCTION void statfix(obj it)
{
  for(int i = 0x00; i < 0x03; i ++)
  {
    int Q5G7 = getRealStat(it, i);
    int Q5W9 = Q5G7;
    if(Q5G7 < 0x00)
    {
      Q5W9 = 0x00;
    }
    if(Q5G7 >= 0xC8)
    {
      Q5W9 = 0x00;
    }
    if(Q5W9 != Q5G7)
    {
      int Q527 = setRealStat(it, i, Q5W9);
    }
  }
  return;
}

TRIGGER( creation )()
{
  if(!isEditing(this))
  {
    callback(this, 0x05, 0x93);
  }
  return(0x01);
}

TRIGGER( callback , 0x93 )()
{
  statfix(this);
  return(0x01);
}