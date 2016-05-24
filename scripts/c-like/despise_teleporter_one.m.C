// Real-C
#include "ENGINE.hpp"

TRIGGER( creation )()
{
  setType(this, 0x375A);
  return(0x00);
}

TRIGGER( enterrange , 0x01 )(obj target)
{
  loc Q648 = loc( 0x1647, 0x027F, 0x00 );
  if(!teleport(target, Q648))
  {
    return(0x01);
  }
  return(0x00);
}