// UOSL (native)
inherits quest_general_funcs;

trigger creation
{
  if(!hasObjVar(this, "questMurderReason"))
  {
    debugMessage("Attempted to attach murder quest without reason.");
    return(0x01);
  }
  if(!hasObjVar(this, "questMurderVictim"))
  {
    debugMessage("Attempted to attach murder quest without victim.");
    return(0x01);
  }
  member string Q59W = getObjVar(this, "questMurderReason");
  member obj Q5A3 = getObjVar(this, "questMurderVictim");
  setNotoriety(this, 0x00 - 0x63);
  return(0x01);
}

trigger 100 enterrange(0x05)
{
  if(!Q4BN(this, target))
  {
    return(0x01);
  }
  string Q58D = Q4RO(target) + Q59W + ". Bring me " + getHisHer(Q5A3) + " head as proof of the deed. " + Q4RP(this);
  setObjVar(this, "questIntroMessage", Q58D);
  setObjVar(this, "questTarget", target);
  Q4LW(this, target);
  return(0x01);
}

trigger give
{
  if(!hasObjVar(givenobj, "questMurderObjTag"))
  {
    return(0x01);
  }
  obj head = getObjVar(givenobj, "questMurderObjTag");
  if(head != Q5A3)
  {
    string Q58D = "This is not the head of mine enemy! " + Q59W + Q59D() + Q4RP(this);
    bark(this, Q58D);
    return(0x00);
  }
  Q4MC(this, giver, 0x00);
  removeObjVar(this, "questMurderVictim");
  removeObjVar(this, "questMurderReason");
  deleteObject(givenobj);
  detachScript(this, "quest_murder_asker");
  return(0x00);
}