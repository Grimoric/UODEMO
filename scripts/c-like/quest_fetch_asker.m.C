// Real-C
#include "ENGINE.hpp"

#include "quest_general_funcs.h"

TRIGGER( creation )()
{
  if(!hasObjVar(this, "questFetchReason"))
  {
    debugMessage("Attempted to attach quest-fetch-asker without supplying a reason for desiring the object type.");
    detachScript(this, "quest_fetch_asker");
    return(0x01);
  }
  if(!hasObjVar(this, "questFetchObjType"))
  {
    if(!hasObjVar(this, "questFetchObject"))
    {
      debugMessage("Attempted to attach quest-fetch-asker without supplying a desired object.");
      detachScript(this, "quest_fetch_asker");
      return(0x01);
    }
  }
  MEMBER string Q59W = getObjVar(this, "questFetchReason");
  MEMBER int Q59V;
  if(hasObjVar(this, "questFetchObjType"))
  {
    Q59V = getObjVar(this, "questFetchObjType");
  }
  MEMBER obj Q59U;
  MEMBER obj Q59N;
  if(hasObjVar(this, "questFetchObject"))
  {
    Q59U = getObjVar(this, "questFetchObject");
    Q59N = getObjVar(this, "questItemHolder");
  }
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
  else
  {
    Q612 = getNameByType(Q59V) + "s";
  }
  Q58D = Q58D + Q59W + Q612 + ". ";
  if(Q59N != NULL())
  {
    Q58D = Q58D + " " + getName(Q59N) + " hath one, I hear. ";
  }
  Q58D = Q58D + Q4RP(this);
  setObjVar(this, "questIntroMessage", Q58D);
  setObjVar(this, "questTarget", target);
  Q4LW(this, target);
  return(0x01);
}

TRIGGER( give )(obj giver, obj givenobj)
{
  int Q4QI = 0x00;
  if(Q59U != NULL())
  {
    if(givenobj == Q59U)
    {
      Q4QI = 0x01;
    }
  }
  if(!Q4QI)
  {
    if(getObjType(givenobj) == Q59V)
    {
      Q4QI = 0x01;
    }
  }
  if(!Q4QI)
  {
    return(0x01);
  }
  Q4MC(this, giver, 0x01);
  deleteObject(givenobj);
  removeObjVar(this, "fetchQuestTarget");
  removeObjVar(this, "fetchQuestIntroMessage");
  removeObjVar(this, "isActor");
  removeObjVar(this, "questFetchObjType");
  removeObjVar(this, "questFetchReason");
  detachScript(this, "quest_fetch_asker");
  return(0x00);
}