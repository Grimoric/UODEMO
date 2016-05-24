// Real-C
#include "ENGINE.hpp"

TRIGGER( speech , "reset" )(obj speaker, string arg)
{
  if(hasObjVar(speaker, "usedDespiseLvlOneAnkh"))
  {
    bark(this, "You have the object variable I'm looking for.");
    removeObjVar(speaker, "usedDespiseLvlOneAnkh");
  }
  return(0x00);
}