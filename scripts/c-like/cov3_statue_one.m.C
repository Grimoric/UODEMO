// Real-C
#include "ENGINE.hpp"

#include "globals.h"

TRIGGER( enterrange , 0x03 )(obj target)
{
  string Q5ZM = "Beware Ye Who Enter These Halls!";
  list Q56U = list( Q5ZM );
  if(!hasObjVar(this, "working"))
  {
    if(!hasObjVar(target, "CovetousListenToStatueSpeak"))
    {
      setObjVar(this, "working", 0x01);
      callback(this, 0x19, 0x24);
      bark(this, Q5ZM);
      messageToRange(getLocation(this), 0x05, "barknow", Q56U);
      setObjVar(target, "CovetousListenToStatueSpeak", 0x01);
    }
  }
  return(0x01);
}

TRIGGER( callback , 0x24 )()
{
  if(hasObjVar(this, "working"))
  {
    removeObjVar(this, "working");
  }
  return(0x00);
}

TRIGGER( speech , "resetme" )(obj speaker, string arg)
{
  if(hasObjVar(speaker, "CovetousListenToStatueSpeak"))
  {
    removeObjVar(speaker, "CovetousListenToStatueSpeak");
  }
  return(0x00);
}