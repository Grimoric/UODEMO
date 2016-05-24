// Real-C
#include "ENGINE.hpp"

TRIGGER( use )(obj user)
{
  if(isPlayer(user))
  {
    list args = list( 0x08 );
    multimessage(user, "usedme", args);
  }
  return(0x01);
}