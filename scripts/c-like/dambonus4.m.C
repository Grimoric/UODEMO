// Real-C
#include "ENGINE.hpp"

#include "spelskil.h"

TRIGGER( creation )()
{
  Q581(this, 0x00, 0x00, 0x05, 0x00);
  return(0x01);
}