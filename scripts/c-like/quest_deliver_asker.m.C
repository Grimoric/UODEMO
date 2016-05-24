// Real-C
#include "ENGINE.hpp"

#include "quest_general_funcs.h"

TRIGGER( creation )()
{
  if(!hasObjVar(this, "questDeliverReason"))
  {
    debugMessage("Attempted to attach quest-deliver-asker without supplying a reason.");
    detachScript(this, "quest_deliver_asker");
    return(0x01);
  }
  if(!hasObjVar(this, "questDeliverObject"))
  {
    debugMessage("Attempted to attach quest-deliver-asker without supplying an object.");
    detachScript(this, "quest_fetch_asker");
    return(0x01);
  }
  if(!hasObjVar(this, "questItemDestination"))
  {
    debugMessage("Attempted to attach quest-deliver-asker without supplying a destination.");
    detachScript(this, "quest_fetch_asker");
    return(0x01);
  }
  MEMBER string Q59W = getObjVar(this, "questDeliverReason");
  MEMBER obj Q59U;
  MEMBER obj Q59I;
  Q59U = getObjVar(this, "questDeliverObject");
  Q59I = getObjVar(this, "questItemDestination");
  return(0x01);
}

TRIGGER( 100 , enterrange , 0x05 )(obj target)
{
  if(!Q4BN(this, target))
  {
    return(0x01);
  }
  string Q58D = Q4RO(target);
  string Q612;
  if(Q59U != NULL())
  {
    Q612 = getName(Q59U);
  }
  Q58D = Q58D + Q59W + Q612 + ". ";
  Q58D = Q58D + "Couldst thou take this one to " + getName(Q59I) + "? ";
  Q58D = Q58D + Q4RP(Q59I);
  Q58D = Q58D + " Payment will be upon delivery. Say 'agreed' if thou dost agree.";
  setObjVar(this, "questIntroMessage", Q58D);
  setObjVar(this, "questTarget", target);
  setObjVar(this, "questJustAsked", target);
  Q4LW(this, target);
  return(0x01);
}

TRIGGER( speech , "*" )(obj speaker, string arg)
{
  if(!hasObjVar(this, "questJustAsked"))
  {
    return(0x01);
  }
  obj them = getObjVar(this, "questJustAsked");
  if(them != speaker)
  {
    return(0x01);
  }
  removeObjVar(this, "questJustAsked");
  list args;
  split(args, arg);
  if(!isInList(args, "agreed"))
  {
    return(0x01);
  }
  bark(this, "I thank thee! In that case, I wash my hands of the task. Here is the item.");
  setObjVar(Q59U, "valueless", 0x01);
  if(giveItem(speaker, Q59U) == NULL())
  {
    int Q4TR = teleport(Q59U, getLocation(speaker));
  }
  removeObjVar(this, "questDeliverObject");
  removeObjVar(this, "questItemDestination");
  removeObjVar(this, "questDeliverReason");
  removeObjVar(this, "isActor");
  detachScript(this, "quest_deliver_asker");
  return(0x00);
}