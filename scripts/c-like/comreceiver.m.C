// Real-C
#include "ENGINE.hpp"

#include "guildbase.h"

FUNCTION void Q4DQ()
{
  list args;
  appendToList(args, getLocation(this));
  multiMessageToLoc(getRelayLoc(this), "collect", args);
  return;
}

TRIGGER( online )()
{
  Q4DQ();
  return(0x01);
}

TRIGGER( serverswitch )()
{
  Q4DQ();
  return(0x01);
}

TRIGGER( message , "requestCollection" )(obj sender, list args)
{
  Q4DQ();
  return(0x01);
}