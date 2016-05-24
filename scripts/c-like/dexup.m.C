// Real-C
#include "ENGINE.hpp"

#include "spelskil.h"

FUNCTION void Q65X()
{
  setDefaultReturn(0x01);
  Q42D(this, 0x01, 0x01);
  return;
}

TRIGGER( message , "cancelmagic" )(obj sender, list args)
{
  Q65X();
  return(0x01);
}

TRIGGER( callback , 0x69 )()
{
  Q65X();
  return(0x01);
}