// Real-C
#include "ENGINE.hpp"

#include "globals.h"

TRIGGER( callback , 0x7D )()
{
  if(hasObjVar(this, "criminal"))
  {
    removeObjVar(this, "criminal");
  }
  detachScript(this, "remcriminal");
  return(0x00);
}