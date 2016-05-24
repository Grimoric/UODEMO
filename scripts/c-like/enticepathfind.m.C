// Real-C
#include "ENGINE.hpp"

#include "globals.h"

TRIGGER( creation )()
{
  MEMBER obj enticer = getObjVar(this, "enticer");
  removeObjVar(this, "enticer");
  MEMBER obj enticed = getObjVar(this, "enticed");
  removeObjVar(this, "enticed");
  return(0x00);
}

TRIGGER( pathnotfound , 0x01 )()
{
  if(isHuman(this))
  {
    bark(enticed, "Hmm, I can't find that lovely music...");
  }
  barkTo(enticer, enticer, "They seem unable to reach you.");
  return(0x00);
}

TRIGGER( pathfound , 0x01 )()
{
  if(isHuman(this))
  {
    bark(enticed, "It was you playing that lovely music!");
  }
  detachScript(enticed, "enticepathfind");
  return(0x00);
}