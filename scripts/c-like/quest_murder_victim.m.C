// Real-C
#include "ENGINE.hpp"

#include "quest_general_funcs.h"

TRIGGER( creation )()
{
  if(!hasObjVar(this, "questMyMurderer"))
  {
    debugMessage("Attempted to set up murder quest without telling the victim who wants him dead.");
    detachScript(this, "quest_murder_victim");
    return(0x00);
  }
  MEMBER obj Q59S = getObjVar(this, "questMyMurderer");
  return(0x01);
}

FUNCTION string Q4F9()
{
  list Q5LW = list( " intends to kill me!", " wishes me dead!", " hates me for no reason I can discern!", " wants me dead!", " hates me and wants me dead!", " hates me and wishes me dead!", " plans to kill me!", " hopes to see me dead!", " hates me and hopes to see me dead!" );
  string Q58D;
  Q58D = Q5LW[random(0x00, numInList(Q5LW) - 0x01)];
  return(getName(Q59S) + Q58D);
}

TRIGGER( 200 , enterrange , 0x05 )(obj target)
{
  string Q58D;
  if(!Q4BN(this, target))
  {
    return(0x01);
  }
  Q58D = Q4RO(target) + Q4F9();
  setObjVar(this, "questIntroMessage", Q58D);
  setObjVar(this, "questTarget", target);
  Q4LW(this, target);
  return(0x01);
}

TRIGGER( speech , "*" )(obj speaker, string arg)
{
  list args;
  string killer = getName(Q59S);
  split(args, arg);
  if(!isInList(args, killer))
  {
    return(0x01);
  }
  bark(this, Q4F9());
  return(0x00);
}

TRIGGER( death )(obj attacker, obj corpse)
{
  obj head;
  bark(this, "You lop off the head!");
  head = createGlobalObjectIn(0x1DA0, this);
  setObjVar(head, "questMurderObjTag", this);
  string Q4VM = "the head of " + getName(this);
  setObjVar(head, "lookAtText", Q4VM);
  if(giveItem(attacker, head) == NULL())
  {
    int Q4TR = teleport(head, getLocation(attacker));
  }
  return(0x00);
}