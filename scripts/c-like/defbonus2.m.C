// Real-C
#include "ENGINE.hpp"

#include "defbonus.h"

MEMBER int Q4H7;

TRIGGER( creation )()
{
  Q4H7 = 0x64;
  Q424(this, Q4H7 / 0x0A);
  return(0x01);
}