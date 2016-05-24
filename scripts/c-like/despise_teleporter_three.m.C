// Real-C
#include "ENGINE.hpp"

TRIGGER( creation )()
{
  setType(this, 0x375A);
  return(0x00);
}

TRIGGER( enterrange , 0x01 )(obj target)
{
  loc Q648 = loc( 0x163A, 0x0239, 0x19 );
  if(!teleport(target, Q648))
  {
    return(0x01);
  }
  return(0x00);
}