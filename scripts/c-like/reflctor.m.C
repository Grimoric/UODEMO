// Real-C
#include "ENGINE.hpp"

#include "spelskil.h"

TRIGGER( callback , 0x16 )()
{
  loseFatigue(this, 0x0A);
  return(0x00);
}