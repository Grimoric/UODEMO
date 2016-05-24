// Real-C
#include "ENGINE.hpp"

#include "sk_table.h"

TRIGGER( callback , 0x2C )()
{
  detachScript(this, "noheal");
  return(0x00);
}