// UOSL (native)
inherits quest_general_funcs;

trigger creation
{
  if(!hasObjVar(this, "questMyMurderer"))
  {
    debugMessage("Attempted to set up murder quest without telling the victim who wants him dead.");
    detachScript(this, "quest_murder_victim");
    return(0x00);
  }
  member obj Q59S = getObjVar(this, "questMyMurderer");
  return(0x01);
}

function string Q4F9()
{
  list Q5LW = " intends to kill me!", " wishes me dead!", " hates me for no reason I can discern!", " wants me dead!", " hates me and wants me dead!", " hates me and wishes me dead!", " plans to kill me!", " hopes to see me dead!", " hates me and hopes to see me dead!";
  string Q58D;
  Q58D = Q5LW[random(0x00, numInList(Q5LW) - 0x01)];
  return(getName(Q59S) + Q58D);
}

trigger 200 enterrange(0x05)
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

trigger speech("*")
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

trigger death
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