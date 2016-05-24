// Real-C
#include "ENGINE.hpp"

#include "spelskil.h"

FUNCTION void Q65X()
{
  setDefaultReturn(0x01);
  Q42D(this, 0x00, 0x00);
  handleHealthGain(this);
  return;
}

TRIGGER( message , "cancelmagic" )(obj sender, list args)
{
  Q65X();
  return(0x01);
}

TRIGGER( callback , 0x68 )()
{
  Q65X();
  return(0x01);
}

TRIGGER( ishealthy )()
{
  return(0x00);
}