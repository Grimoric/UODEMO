// Real-C
#include "ENGINE.hpp"

TRIGGER( enterrange , 0x02 )(obj target)
{
  if(isPlayer(target))
  {
    list args = list( 0x01 );
    multimessage(target, "foundme", args);
  }
  return(0x01);
}

TRIGGER( use )(obj user)
{
  if(isPlayer(user))
  {
    list args = list( 0x01 );
    multimessage(user, "usedme", args);
  }
  return(0x01);
}