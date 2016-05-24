// Real-C
#include "ENGINE.hpp"

FUNCTION void Q4M8(obj usedon)
{
  return;
}

TRIGGER( use )(obj user)
{
  Q4M8(this);
  return(0x01);
}