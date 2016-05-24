// Real-C
#include "ENGINE.hpp"

TRIGGER( creation )()
{
  callback(this, 0x0A, 0xC9);
  return(0x01);
}

TRIGGER( callback , 0xC9 )()
{
  int npcAwareness = getObjVar(this, "npcAwareness");
  if(npcAwareness > 0x6E)
  {
    setObjVar(this, "npcAwareness", npcAwareness - 0x0A);
    callback(this, 0x0A, 0xC9);
  }
  else
  {
    removeObjVar(this, "npcAwareness");
    detachScript(this, "crimeaware");
  }
  return(0x01);
}