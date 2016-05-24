// UOSL (native)
inherits globals;

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

function void Q45G(obj killer, obj victim)
{
  list Q51M;
  if(hasObjListVar(killer, "killcount"))
  {
    getObjListVar(Q51M, killer, "killcount");
  }
  if(!0x00)
  {
    if(isInList(Q51M, getName(victim)))
    {
      return();
    }
  }
  if(0x00)
  {
    bark(killer, "Adding victim to the bounty list.");
  }
  appendToList(Q51M, getName(victim));
  setObjVar(killer, "killcount", Q51M);
  return();
}

function void Q4MR(obj killer, obj victim)
{
  if(hasObjVar(this, "bountyKiller"))
  {
    removeObjVar(this, "bountyKiller");
  }
  list Q59P;
  setObjVar(victim, "myLastKiller", killer);
  appendToList(Q59P, 0x00);
  appendToList(Q59P, "YES - You report them to Lord British's guards. This will increase the recorded murders under this person's name and may result in a bounty placed on their head.");
  appendToList(Q59P, 0x01);
  appendToList(Q59P, "NO - you forgive this person for killing you and do not report them to Lord British's guards.");
  selectType(victim, victim, 0x01, "You have been murdered! Do you wish to report this crime to Lord British's guards?", Q59P);
  if(0x00)
  {
    bark(killer, "Opening reporting menu.");
  }
  return();
}

trigger typeselected(0x01)
{
  if(listindex == 0x00)
  {
    systemMessage(this, "You have cancelled the bounty reporting process.");
    detachScript(this, "bounty");
    return(0x01);
  }
  switch(objtype)
  {
  case 0x00
    if(!hasObjVar(this, "myLastKiller"))
    {
      systemMessage(this, "An error has occurred and your murder cannot be reported.");
      detachScript(this, "bounty");
      return(0x01);
    }
    obj killer = getObjVar(this, "myLastKiller");
    removeObjVar(this, "myLastKiller");
    Q45G(killer, this);
    break;
  case 0x01
    systemMessage(this, "You have cancelled the bounty reporting process.");
    break;
  default
    systemMessage(this, "You have cancelled the bounty reporting process.");
    break;
  }
  return(0x01);
}

function int Q4BG(obj killer, obj victim)
{
  int Q51M = Q4S2(killer);
  int Q67R = Q4S2(victim);
  if(!isPlayer(killer))
  {
    return(0x00);
  }
  if(!isPlayer(victim))
  {
    return(0x00);
  }
  if(Q51M < Q67R)
  {
    if(0x00)
    {
      bark(victim, "Killer's killcount lower than victim's");
    }
    systemMessage(victim, "You cannot report this death because the person who killed you has slain less people than you have.");
    return(0x00);
  }
  if(getNotorietyLevel(victim) < (0x00 - 0x01))
  {
    if(0x00)
    {
      bark(victim, "Victim's notoriety too low to report.");
    }
    systemMessage(victim, "You cannot report this death to Lord British's guards because your notoriety is too low.");
    return(0x00);
  }
  if(isCriminal(victim))
  {
    if(0x00)
    {
      bark(victim, "Victim flagged criminal");
    }
    systemMessage(victim, "You cannot report this death to Lord British's guards because you are flagged as a criminal because of your recent deeds.");
    return(0x00);
  }
  if(!hasObjVar(victim, "lastCriminal"))
  {
    if(0x00)
    {
      bark(victim, "Victim doesn't have lastCriminal attached");
    }
    return(0x00);
  }
  obj Q52F = getObjVar(victim, "lastCriminal");
  if(Q52F != killer)
  {
    if(0x00)
    {
      bark(victim, "Victim's last criminal doesn't match killer");
    }
    return(0x00);
  }
  return(0x01);
}

function int Q4Y1(obj killer, obj victim)
{
  if(Q4BG(killer, victim))
  {
    shortCallback(victim, 0x01, 0x8C);
    if(0x00)
    {
      bark(victim, "Allowed to report!");
    }
  }
  if(0x00)
  {
    bark(killer, "Returning killcount.");
    string Q4GQ;
    int Q4Q1 = Q4S2(killer);
    Q4GQ = Q4Q1;
    bark(killer, Q4GQ);
  }
  return(Q4S2(killer));
}

trigger callback(0x8C)
{
  if(getMobFlag(this, 0x02))
  {
    shortCallback(this, 0x01, 0x8C);
    return(0x01);
  }
  obj killer = getObjVar(this, "bountyKiller");
  Q4MR(killer, this);
  return(0x01);
}

function string Q4RW(obj killer)
{
  obj Q4UP = getItemAtSlot(killer, 0x0B);
  if(Q4UP == NULL())
  {
    return("indeterminate color");
  }
  int Q4XG = getHue(Q4UP);
  Q4XG = Q4XG - 0x044C;
  switch(Q4XG)
  {
  case 0x01
  case 0x02
  case 0x03
    return("white");
    break;
  case 0x04
  case 0x05
  case 0x06
    return("graying");
    break;
  case 0x07
  case 0x08
    return("black hair");
  case 0x09
  case 0x0A
  case 0x0B
    return("copper");
    break;
  case 0x0C
  case 0x0D
  case 0x0E
  case 0x0F
    return("brown");
    break;
  case 0x10
    return("reddish brown");
    break;
  case 0x11
  case 0x12
  case 0x13
    return("blonde");
    break;
  case 0x14
  case 0x15
  case 0x16
    return("light brown");
    break;
  case 0x17
  case 0x18
    return("golden brown");
    break;
  case 0x19
  case 0x1A
  case 0x1B
    return("golden");
    break;
  case 0x1C
  case 0x1D
  case 0x1E
    return("bronze");
    break;
  case 0x1F
  case 0x20
    return("dark brown");
    break;
  case 0x21
  case 0x22
    return("sandy");
    break;
  case 0x23
  case 0x24
  case 0x25
    return("honey-colored");
    break;
  case 0x26
  case 0x27
  case 0x28
    return("red");
    break;
  case 0x29
  case 0x2A
  case 0x2B
    return("nut brown");
    break;
  case 0x2C
  case 0x2D
  case 0x2E
    return("rich brown");
    break;
  case 0x2F
  case 0x30
    return("very dark brown");
    break;
  }
  return("outlandishly colored");
}

function string Q4RX(obj killer)
{
  obj Q4UP = getItemAtSlot(killer, 0x0B);
  string Q5Y4;
  switch(getObjType(Q4UP))
  {
  case 0x2049
    Q5Y4 = "hair in two pigtails";
    break;
  case 0x2047
    Q5Y4 = "curly hair";
    break;
  case 0x2046
    Q5Y4 = "hair tied in buns";
    break;
  case 0x204A
    Q5Y4 = "shaved head and topknot";
    break;
  case 0x203C
    Q5Y4 = "hair worn long";
    break;
  case 0x2044
    Q5Y4 = "a mohawk hairstyle";
    break;
  case 0x203D
    Q5Y4 = "hair tied back";
    break;
  case 0x2045
    Q5Y4 = "pageboy hair";
    break;
  case 0x2048
    Q5Y4 = "receding hairline";
    break;
  case 0x203B
    Q5Y4 = "hair worn short";
    break;
  default
    Q5Y4 = "bald";
    break;
  }
  return(Q5Y4);
}

function string Q4SU(obj killer)
{
  string Q5Y4;
  int Q4XG = getHue(killer);
  Q4XG = Q4XG - 0x03E8;
  Q4XG = Q4XG - 0x8000;
  if(0x00)
  {
    string Q48R = Q4XG;
    bark(killer, Q48R);
  }
  switch(Q4XG)
  {
  case 0x0F
  case 0x16
  case 0x1D
  case 0x1E
  case 0x24
  case 0x25
    Q5Y4 = "pale";
    break;
  case 0x08
  case 0x09
  case 0x17
  case 0x1F
  case 0x2C
  case 0x2D
  case 0x01
  case 0x02
  case 0x10
  case 0x11
  case 0x12
  case 0x2E
    Q5Y4 = "fair";
    break;
  case 0x0A
  case 0x0B
  case 0x13
  case 0x18
  case 0x19
  case 0x20
  case 0x26
  case 0x27
  case 0x28
  case 0x2F
    Q5Y4 = "tanned";
    break;
  case 0x03
  case 0x04
  case 0x05
  case 0x0C
  case 0x1A
  case 0x29
  case 0x2A
  case 0x30
  case 0x38
    Q5Y4 = "copper";
    break;
  case 0x06
  case 0x07
  case 0x0D
  case 0x0E
  case 0x14
  case 0x15
  case 0x1B
  case 0x1C
  case 0x21
  case 0x22
  case 0x23
  case 0x2B
  case 0x31
  case 0x32
  case 0x39
    Q5Y4 = "dark";
    break;
  case 0x33
  case 0x34
  case 0x35
    Q5Y4 = "yellow";
    break;
  default
    Q5Y4 = "pimply";
    break;
  }
  return(Q5Y4);
}

function string Q4RY(obj killer)
{
  list Q5Y8 = "hath murdered one too many!", "hath killed " + getHisHer(killer) + " last!", "shall not slay again!", "hath slain too many!", "cannot continue to kill!", "must be stopped.", "is a bloodthirsty monster.", "is a killer of the worst sort.", "hath no conscience!", "hath cowardly slain many.", "must die for all our sakes.", "sheds innocent blood!", "must fall to preserve us.", "must be taken care of.", "is a thug and must die.", "cannot be redeemed.", "is a shameless butcher.", "is a callous monster.", "is a cruel, casual killer.";
  string Q5Y4 = Q5Y8[random(0x00, numInList(Q5Y8) - 0x01)];
  return(Q5Y4);
}

function string Q4J2(obj killer)
{
  list Q5Y8 = "  A bounty is hereby offered", "  Lord British sets a price", "  Claim the reward! 'Tis", "  Lord Blackthorn set a price", "  The Paladins set a price", "  The Merchants set a price", "  Lord British's bounty ";
  string Q5Y4 = Q5Y8[random(0x00, numInList(Q5Y8) - 0x01)];
  return(Q5Y4);
}

function obj Q5K6(obj Q47Z, obj Q521)
{
  obj Q58D;
  obj killer;
  obj Q4QI;
  list Q4E4;
  getContents(Q4E4, Q47Z);
  int Q55T = numInList(Q4E4);
  for(int i = 0x00; i < Q55T; i ++)
  {
    Q58D = Q4E4[i];
    if(getObjType(Q58D) == 0x0EB0)
    {
      if(hasObjVar(Q58D, "killer"))
      {
        killer = getObjVar(Q58D, "killer");
        if(killer == Q521)
        {
          return(Q58D);
        }
      }
    }
  }
  return(NULL());
}

function void postKillerToBB(obj killer)
{
  if(!hasObjListVar(killer, "killcount"))
  {
    detachScript(this, "bounty");
    return();
  }
  list Q51M;
  getObjListVar(Q51M, killer, "killcount");
  obj Q47Z = findClosestBBoard(getLocation(this));
  obj Q58D;
  Q58D = Q5K6(Q47Z, killer);
  if(Q58D == NULL())
  {
    Q58D = createNoResObjectIn(0x0EB0, Q47Z);
  }
  setObjVar(Q58D, "killer", killer);
  obj bank = getItemAtSlot(killer, 0x1D);
  obj Q5NR = doTakeMoney(bank, 0x0EED, 0xC350);
  if(Q5NR == NULL())
  {
    if(0x00)
    {
      bark(killer, "NULL reward!");
    }
  }
  string reward = "alas, zero";
  if(Q5NR != NULL())
  {
    int Q48S = teleport(Q5NR, getLocation(killer));
    int Q463;
    int blah = getResource(Q463, Q5NR, "gold", 0x03, 0x02);
    if(0x00)
    {
      reward = Q463;
      systemMessage(killer, "Gold resource from bank:");
      systemMessage(killer, reward);
    }
    transferResources(Q58D, Q5NR, Q463, "gold");
    if(0x00)
    {
      blah = getResource(Q463, Q5NR, "gold", 0x03, 0x02);
      reward = Q463;
      systemMessage(killer, "Gold resource on gold after transfer:");
      systemMessage(killer, reward);
    }
    blah = getResource(Q463, Q58D, "gold", 0x03, 0x02);
    if(0x00)
    {
      reward = Q463;
      systemMessage(killer, "Gold resource from board:");
      systemMessage(killer, reward);
    }
    reward = Q463;
    if(0x00)
    {
      bark(killer, "reward!");
      bark(killer, reward);
    }
    deleteObject(Q5NR);
  }
  string Q5Y5;
  string Q5Y6;
  string Q67E;
  string Q67F;
  switch(random(0x00, 0x05))
  {
  case 0x00
  default
    Q5Y5 = "Bounty for ";
    Q5Y6 = "!";
    break;
  case 0x01
    Q5Y5 = "";
    Q5Y6 = " must die!";
    break;
  case 0x02
    Q5Y5 = "A price on ";
    Q5Y6 = "!";
    break;
  case 0x03
    Q5Y5 = "";
    Q5Y6 = " outlawed!";
    break;
  case 0x04
    Q5Y5 = "Execute ";
    Q5Y6 = "!";
    break;
  case 0x05
    Q5Y5 = "WANTED: ";
    Q5Y6 = "!";
    break;
  }
  Q67E = Q51M[random(0x00, numInList(Q51M) - 0x01)];
  Q67F = Q51M[random(0x00, numInList(Q51M) - 0x01)];
  int Q600 = Q4S2(killer);
  string dead = Q600;
  list postText = Q5Y5 + getName(killer) + Q5Y6, "  The foul scum known as", getName(killer), Q4RY(killer), "For " + getHeShe(killer) + " is guilty of " + dead, "murders, among them those", "of " + Q67E + " and ", Q67F + ".", Q4J2(killer), "of " + reward + " gold pieces", "for " + getHisHer(killer) + " head!", "  A description:", "    - " + Q4RW(killer) + " hair", "    - " + Q4RX(killer), "    - " + Q4SU(killer) + " skin", "  If you kill " + getHimHer(killer) + ", bring the", "head to a guard here in this", "city to claim your reward.";
  setObjVar(Q58D, "postText", postText);
  return();
}

function void setBounty(obj killer)
{
  string Q4GQ;
  postKillerToBB(killer);
  attachScript(killer, "bountymark");
  setNotoriety(killer, (0x00 - 0x7F));
  barkTo(killer, killer, "A bounty hath been issued for thee, and thy worldly goods are hereby confiscated!");
  obj bank = getItemAtSlot(killer, 0x1D);
  list Q47M;
  getContents(Q47M, bank);
  for(int i = 0x00; i < numInList(Q47M); i ++)
  {
    bank = Q47M[i];
    if(0x00)
    {
      Q4GQ = "Deleting bank item: " + getName(bank);
      systemMessage(killer, Q4GQ);
    }
    deleteObject(bank);
  }
  return();
}

function void Q4J1(obj killer, obj victim)
{
  if(Q4Y1(killer, victim) > 0x0A)
  {
    setBounty(killer);
  }
  return();
}

trigger creation
{
  if(!hasObjVar(this, "bountyKiller"))
  {
    if(0x00)
    {
      bark(this, "Error attaching bounty script.");
    }
    detachScript(this, "bounty");
    return(0x01);
  }
  obj killer = getObjVar(this, "bountyKiller");
  Q4J1(killer, this);
  return(0x01);
}

trigger speech("add")
{
  if(0x00)
  {
    Q4J1(speaker, this);
  }
  return(0x01);
}

trigger speech("count")
{
  if(0x00)
  {
    string Q4Q1;
    int bar = Q4S2(this);
    Q4Q1 = bar;
    bark(this, Q4Q1);
  }
  return(0x01);
}