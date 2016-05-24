// Real-C
#include "ENGINE.hpp"

TRIGGER( enterrange , 0x00 )(obj target)
{
  loc Q648 = loc( 0x1450, 0x028C, 0x00 );
  setType(this, 0x11C0);
  callback(this, 0x01, 0x01);
  if(!teleport(target, Q648))
  {
    return(0x00);
  }
  return(0x01);
}

TRIGGER( callback , 0x01 )()
{
  setType(this, 0x11BF);
  return(0x00);
}