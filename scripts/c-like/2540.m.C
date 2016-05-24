// Real-C
#include "ENGINE.hpp"

#include "globals.h"

TRIGGER( use )(obj user)
{
  targetObj(user, this);
  return(0x01);
}

TRIGGER( targetobj )(obj user, obj usedon)
{
  if(usedon == NULL())
  {
    return(0x00);
  }
  int Q66P = getObjType(usedon);
  switch(Q66P)
  {
  case 0x103D:
    string name;
    if(hasObjVar(usedon, "NAME"))
    {
      name = getObjVar(usedon, "NAME");
    }
    if(name == "sweet dough")
    {
      setType(usedon, 0x103F);
      attachScript(usedon, "4159");
      removeObjVar(usedon, "NAME");
      detachScript(usedon, "4157");
    }
    else
    {
      removeObjVar(usedon, "NAME");
      setObjVar(usedon, "NAME", "sweet dough");
      deleteObject(this);
    }
    break;
  }
  return(0x00);
}