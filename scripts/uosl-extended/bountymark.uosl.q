// UOSL (enhanced)
inherits sk_table;

trigger creation()
{
  if(0x00)
  {
    bark(this, "I am now bounty hunted!");
  }
  return(0x01);
}

function int Q4S2(obj killer)
{
  if(!hasObjListVar(killer, "killcount"))
  {
    return(0x00);
  }
  list Q51M;
  getObjListVar(Q51M, killer, "killcount");
  return(numInList(Q51M));
}

trigger time<"hour:12">()
{
  if(!hasObjListVar(this, "killcount"))
  {
    return(0x01);
  }
  list Q51M;
  getObjListVar(Q51M, this, "killcount");
  removeObjVar(this, "killcount");
  removeItem(Q51M, 0x01);
  if(numInList(Q51M) > 0x00)
  {
    setObjVar(this, "killcount", Q51M);
  }
  if(0x00)
  {
    bark(this, "Reducing bounty count.");
  }
  return(0x01);
}

function void Q5HL(obj Q5HY)
{
  if(0x00)
  {
    bark(Q5HY, "Penalizing stats.");
  }
  for(int i = 0x00; i < 0x2E; i ++)
  {
    loseSkillLevel(Q5HY, i, (getSkillLevel(Q5HY, i) / 0x0A));
  }
  int Q4Q1;
  for(i = 0x00; i < 0x03; i ++)
  {
    Q4Q1 = modifyRealStat(Q5HY, i, (0x00 - getRealStat(Q5HY, i) / 0x0A));
  }
  removeObjVar(Q5HY, "killcount");
  return;
}

trigger death(obj attacker, obj corpse)
{
  if(!isPlayer(attacker))
  {
    return(0x01);
  }
  if(getNotorietyLevel(attacker) < 0x01)
  {
    if(0x00)
    {
      bark(this, "Killer must be above neutral to collect bounty.");
    }
    return(0x01);
  }
  if(Q4S2(attacker) >= Q4S2(this))
  {
    if(0x00)
    {
      bark(this, "You have a higher killcount than the victim and cannot claim the bounty.");
    }
    return(0x01);
  }
  obj head;
  barkTo(attacker, attacker, "As you kill them, you realize there is a bounty on their head! You take the head as evidence of your victory.");
  head = createGlobalObjectIn(0x1DA0, this);
  string Q65L = "the head of " + getName(this);
  setObjVar(head, "lookAtText", Q65L);
  if(giveItem(attacker, head) == NULL())
  {
    int Q4TR = teleport(head, getLocation(attacker));
  }
  setObjVar(head, "bountyObjID", this);
  setObjVar(head, "bountyClaimant", attacker);
  Q5HL(this);
  shortCallback(this, 0x7F, 0x01);
  return(0x01);
}

trigger callback<0x7F>()
{
  detachScript(this, "bountymark");
  return(0x01);
}