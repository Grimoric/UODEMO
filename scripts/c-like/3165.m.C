// Real-C
#include "ENGINE.hpp"

#include "eat.h"

TRIGGER( creation )()
{
  setObjVar(this, "I_am_food", 0x01);
  setObjVar(this, "satiety", 0x05);
  return(0x01);
}

TRIGGER( use )(obj user)
{
  Q4NG(user, 0x00);
  return(0x01);
}