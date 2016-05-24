// Real-C
#include "ENGINE.hpp"

TRIGGER( enterrange , 0x03 )(obj target)
{
  if(isPlayer(target))
  {
    list args = list( 0x02 );
    multimessage(target, "foundme", args);
  }
  return(0x01);
}

TRIGGER( leaverange , 0x03 )(obj target)
{
  if(isPlayer(target))
  {
    list args = list( 0x02 );
    multimessage(target, "leftme", args);
  }
  return(0x01);
}

TRIGGER( use )(obj user)
{
  if(isPlayer(user))
  {
    list args = list( 0x02 );
    multimessage(user, "usedme", args);
  }
  return(0x01);
}