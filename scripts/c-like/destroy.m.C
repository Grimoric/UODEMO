// Real-C
#include "ENGINE.hpp"

#include "spelskil.h"

TRIGGER( callback , 0x1E )()
{
  deleteObject(this);
  return(0x00);
}