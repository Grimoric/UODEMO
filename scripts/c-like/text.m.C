// Real-C
#include "ENGINE.hpp"

TRIGGER( message , "activate" )(obj sender, list args)
{
  if(hasObjVar(this, "acttext"))
  {
    string acttext = getobjvar_str(this, "acttext");
    bark(this, acttext);
    processTriggerCmds(this, "a");
  }
  return(0x00);
}

TRIGGER( message , "deactivate" )(obj sender, list args)
{
  if(hasObjVar(this, "deacttext"))
  {
    string deacttext = getobjvar_str(this, "deacttext");
    bark(this, deacttext);
    processTriggerCmds(this, "d");
  }
  return(0x00);
}