// Real-C
#include "ENGINE.hpp"

#include "globals.h"

TRIGGER( objectloaded )()
{
  if(hasObjVar(this, "inUse"))
  {
    removeObjVar(this, "inUse");
  }
  return(0x00);
}

TRIGGER( callback , 0x20 )()
{
  string Q5WS = getObjVar(this, "CREATE_THIS");
  int Q5UA = getObjVar(this, "HUE");
  obj user = getObjVar(this, "USER");
  int Q5GS = getObjVar(this, "ORIGINAL_TYPE");
  obj Q5UB = getObjVar(this, "SOURCE");
  int Q5V6 = getObjVar(this, "SPINVALUE");
  int Q4Q1;
  int Q4DN;
  obj Q5BX;
  string Q5B4;
  string Q4Y3;
  obj Q47F = getBackpack(user);
  int Q65M;
  int Q460;
  setType(this, Q5GS);
  if(Q5WS == "yarn")
  {
    Q65M = 0x0E1D;
  }
  if(Q5WS == "thread")
  {
    Q65M = 0x0FA0;
  }
  Q5BX = createNoResObjectAt(Q65M, getLocation(user));
  if(!isValid(Q5BX))
  {
    return(0x01);
  }
  transferResources(Q5BX, this, Q5V6, "cloth");
  Q460 = getQuantity(Q5BX);
  switch(Q460)
  {
  case 0x01:
    if(Q5WS == "yarn")
    {
      Q5B4 = " a ball of yarn";
    }
    else
    {
      Q5B4 = " a spool of thread";
    }
    Q4Y3 = "it";
    break;
  default:
    if(Q5WS == "yarn")
    {
      Q5B4 = " " + Q460 + "  balls of yarn";
    }
    else
    {
      Q5B4 = " " + Q460 + "  spools of thread";
    }
    Q4Y3 = "them";
    break;
  }
  if(canHold(Q47F, Q5BX))
  {
    Q4Q1 = putObjContainer(Q5BX, Q47F);
    systemMessage(user, "You create" + Q5B4 + " and put " + Q4Y3 + " in your backpack.");
  }
  else
  {
    systemMessage(user, "You create the" + Q5B4 + " and put it at your feet.");
  }
  if(hasObjVar(this, "inUse"))
  {
    removeObjVar(this, "inUse");
  }
  setHue(Q5BX, Q5UA);
  removeObjVar(this, "SOURCE");
  removeObjVar(this, "CREATE_THIS");
  removeObjVar(this, "HUE");
  removeObjVar(this, "USERLOC");
  removeObjVar(this, "ORIGINAL_TYPE");
  removeObjVar(this, "SPINVALUE");
  string Q470 = Q65M;
  attachScript(Q5BX, Q470);
  return(0x01);
}