// Real-C
#include "ENGINE.hpp"

TRIGGER( enterrange , 0x01 )(obj target)
{
  if(isDead(target))
  {
    return(0x01);
  }
  if(!hasScript(target, "poisoned"))
  {
    attachScript(target, "poisoned");
    setObjVar(target, "poisoned", 0x01);
    barkTo(this, target, "An overwhelming stench churns your stomach.");
  }
  return(0x01);
}