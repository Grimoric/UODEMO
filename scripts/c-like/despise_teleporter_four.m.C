// Real-C
#include "ENGINE.hpp"

TRIGGER( creation )()
{
  setType(this, 0x375A);
  return(0x00);
}

TRIGGER( enterrange , 0x01 )(obj target)
{
  loc Q648 = loc( 0x16C3, 0x0251, 0x00 );
  if(!teleport(target, Q648))
  {
    return(0x01);
  }
  return(0x00);
}