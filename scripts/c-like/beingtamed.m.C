// Real-C
#include "ENGINE.hpp"

#include "globals.h"

TRIGGER( creation )()
{
  callback(this, 0x10, 0x5C);
  return(0x00);
}

TRIGGER( callback , 0x5C )()
{
  detachScript(this, "beingtamed");
  return(0x00);
}

TRIGGER( washit )(obj attacker, int damamt)
{
  detachScript(this, "beingtamed");
  return(0x01);
}