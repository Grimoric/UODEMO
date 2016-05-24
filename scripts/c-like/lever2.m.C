// Real-C
#include "ENGINE.hpp"

TRIGGER( message , "activate" )(obj sender, list args)
{
  if(getObjType(this) == 0x1095)
  {
    setType(this, 0x1093);
    processTriggerCmds(this, "a");
  }
  return(0x00);
}

TRIGGER( message , "deactivate" )(obj sender, list args)
{
  if(getObjType(this) == 0x1093)
  {
    setType(this, 0x1095);
    processTriggerCmds(this, "d");
  }
  return(0x00);
}

TRIGGER( use )(obj user)
{
  list args;
  int Q65M = getObjType(this);
  if(Q65M == 0x1095)
  {
    message(this, "activate", args);
  }
  else
  {
    message(this, "deactivate", args);
  }
  return(0x00);
}