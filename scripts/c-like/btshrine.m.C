// Real-C
#include "ENGINE.hpp"

#include "shrine.h"

TRIGGER( creation )()
{
  Q5T1 = 0x01;
  return(0x01);
}

TRIGGER( objectloaded )()
{
  Q5T1 = 0x01;
  return(0x01);
}