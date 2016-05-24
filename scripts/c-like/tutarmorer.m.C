// Real-C
#include "ENGINE.hpp"

TRIGGER( enterrange , 0x02 )(obj target)
{
  if(isPlayer(target))
  {
    list args = list( 0x05 );
    multimessage(target, "foundme", args);
  }
  return(0x01);
}