// UOSL (native)
inherits comreceiver;

forward string guildName();
forward string Q4UL();
forward string myGuildTitle();
forward void Q4TI(obj this);

trigger lookedat
{
  if(hasObjVar(this, "displayGuildAbbr"))
  {
    string ab = getObjVar(this, "guildAbbreviation");
    if(hasObjVar(this, "isGuildmaster"))
    {
      string x = getObjVar(this, "gmTitle");
      ab = x + ", " + ab;
    }
    else
    {
      if(myGuildTitle() != " ")
      {
        ab = myGuildTitle() + ", " + ab;
      }
    }
    ab = "[" + ab + "]" + " " + Q4RS(Q4RR());
    barkTo(this, looker, ab);
  }
  return(0x01);
}

trigger objectloaded
{
  Q4TI(this);
  return(0x01);
}

trigger speech("*I resign from my guild*")
{
  if(speaker != this)
  {
    return(0x01);
  }
  Q5MP(this);
  return(0x00);
}

function string guildName()
{
  if(!hasObjVar(this, "guildName"))
  {
    list args;
    message(this, "removedFromGuild", args);
    return("");
  }
  string x = getObjVar(this, "guildName");
  return(x);
}

function string Q4UL()
{
  if(!hasObjVar(this, "guildAbbreviation"))
  {
    list args;
    message(this, "removedFromGuild", args);
    return("");
  }
  string x = getObjVar(this, "guildAbbreviation");
  return(x);
}

function string myGuildTitle()
{
  if(!hasObjVar(this, "myGuildTitle"))
  {
    return(" ");
  }
  string x = getObjVar(this, "myGuildTitle");
  return(x);
}

trigger creation
{
  attachScript(this, "tutwisp");
  Q4TI(this);
  return(0x01);
}

function void Q4TI(obj this)
{
  loc Q55H = 0x00, 0x00, (0x00 - 0x50);
  if(!hasObjVar(this, "guildstoneId"))
  {
    list args;
    message(this, "removedFromGuild", args);
    return();
  }
  obj Q4UE = getObjVar(this, "guildstoneId");
  list blah;
  multimessage(Q4UE, "updateMyGuildInfo", blah);
  blah = Q4UE;
  multiMessageToLoc(Q55H, "doesMyGuildExist", blah);
  return();
}

trigger message("updateGuildInfo")
{
  int Q4ZH = args[0x00];
  string Q43M = args[0x01];
  string Q43L = args[0x02];
  int Q43N = args[0x03];
  string Q43O = args[0x04];
  obj Q42J = args[0x05];
  string gmTitle = args[0x06];
  list Q4FR;
  sendToNearbyPlayers(this, 0x00);
  copyList(Q4FR, args[0x07]);
  setObjVar(this, "opposingGuilds", Q4FR);
  if(Q42J == this)
  {
    setObjVar(this, "isGuildmaster", 0x01);
    setObjVar(this, "gmTitle", gmTitle);
  }
  else
  {
    removeObjVar(this, "isGuildmaster");
    removeObjVar(this, "gmTitle");
  }
  if(!hasObjVar(this, "guildName"))
  {
    setObjVar(this, "guildName", "unaffiliated");
  }
  if(Q43M != guildName())
  {
    systemMessage(this, "The name of your guild has changed from " + guildName() + " to " + Q43M + ".");
    setObjVar(this, "guildName", Q43M);
  }
  if(!hasObjVar(this, "guildAbbreviation"))
  {
    setObjVar(this, "guildAbbreviation", guildName());
  }
  if(Q43L != Q4UL())
  {
    systemMessage(this, "Your guild abbreviation has changed from " + Q4UL() + " to " + Q43L + ".");
    setObjVar(this, "guildAbbreviation", Q43L);
  }
  if(!hasObjVar(this, "myGuildTitle"))
  {
    setObjVar(this, "myGuildTitle", " ");
  }
  if(Q43O != myGuildTitle())
  {
    systemMessage(this, "You have been given a new guild title: " + Q43O + ".");
    setObjVar(this, "myGuildTitle", Q43O);
  }
  if(Q43N != Q4RR())
  {
    systemMessage(this, "Your guild is now " + Q4RT(Q43N) + " guild.");
  }
  sendToNearbyPlayers(this, 0x00);
  if(Q56L(this, Q43N))
  {
    if(Q43N != Q4RR())
    {
      message(this, "removedFromSpecialGuild", args);
      setObjVar(this, "guildType", Q43N);
      string Q5IV = Q4RU(Q43N);
      if(Q5IV != "")
      {
        attachScript(this, Q5IV);
        message(this, "addedToSpecialGuild", args);
      }
    }
  }
  else
  {
    systemMessage(this, "You are no longer qualified to be a member of your guild.");
    Q5MP(this);
    return(0x01);
  }
  if(!Q4ZH)
  {
    systemMessage(this, "You have been dismissed from " + guildName() + ".");
    message(this, "removedFromGuild", args);
  }
  return(0x01);
}

function void Q4DD()
{
  removeObjVar(this, "guildName");
  removeObjVar(this, "guildAbbreviation");
  removeObjVar(this, "myGuildTitle");
  removeObjVar(this, "guildstoneId");
  removeObjVar(this, "displayGuildAbbr");
  removeObjVar(this, "opposingGuilds");
  removeObjVar(this, "guildType");
  removeObjVar(this, "gmTitle");
  removeObjVar(this, "isGuildmaster");
  sendToNearbyPlayers(this, 0x00);
  return();
}

trigger message("removedFromGuild")
{
  Q4DD();
  return(0x01);
}

trigger message("guildMessage")
{
  string Q65L = args[0x00];
  systemMessage(this, "Guild message: " + Q65L);
  return(0x01);
}

trigger message("globalGuildMessage")
{
  string Q65L = args[0x00];
  systemMessage(this, "Guild message: " + Q65L);
  return(0x01);
}

trigger message("guildGone")
{
  systemMessage(this, "Guild message: Your guild has been disbanded!");
  clearList(args);
  message(this, "removedFromGuild", args);
  return(0x01);
}

function void Q4V1()
{
  if(!hasObjVar(this, "canReportIdList"))
  {
    return();
  }
  list canReportNameList;
  getObjListVar(canReportNameList, this, "canReportNameList");
  string Q5MN = canReportNameList[0x00];
  Q5MN = "Would you like to report " + Q5MN + " as a murderer?";
  systemMessage(this, Q5MN);
  int Q55V = amtGoldInBank(this);
  stringQuery(this, this, 0x21, Q5MN, 0x01, 0x02, Q55V, "Optional bounty (" + Q55V + " max)");
  return();
}

trigger textentry(0x21)
{
  if(sender != this)
  {
    return(0x00);
  }
  list canReportNameList;
  getObjListVar(canReportNameList, this, "canReportNameList");
  list canReportIdList;
  getObjListVar(canReportIdList, this, "canReportIdList");
  int Q4Q1;
  list args;
  debugMessage("button=" + button);
  if(button == 0x01)
  {
    obj player = canReportIdList[0x00];
    string Q5IU = canReportNameList[0x00];
    debugMessage("text='" + text + "'");
    int Q48Z = text;
    string Q5CA = Q48Z;
    if(text == Q5CA)
    {
      int Q55W = amtGoldInBank(this);
      if(Q48Z > Q55W)
      {
        Q48Z = Q55W;
      }
      if(Q48Z > 0x00)
      {
        Q4Q1 = withdrawAndDestroy(this, Q48Z);
        obj bountyInfo = createNoResObjectAt(0x01, getLocation(this));
        setObjVar(bountyInfo, "subject", player);
        attachScript(bountyInfo, "bountyinfo");
        args = player, Q48Z, 0x00, Q5IU;
        message(bountyInfo, "addBounty", args);
        Q4Q1 = teleport(bountyInfo, getRelayLoc(player));
        if(isValid(bountyInfo))
        {
          clearList(args);
          message(bountyInfo, "teleported", args);
        }
      }
    }
    args = getAdjFame(this);
    Q56V(player, "murderReport", args);
    Q4Q1 = addToObjVarListSet(this, "recentlyReported", player);
    callbackAdvanced(this, 0x04B0, 0x11, 0x04);
  }
  removeItem(canReportIdList, 0x00);
  removeItem(canReportNameList, 0x00);
  if(numInList(canReportIdList) > 0x00)
  {
    setObjVar(this, "canReportIdList", canReportIdList);
    setObjVar(this, "canReportNameList", canReportNameList);
    shortCallback(this, 0x01, 0x8C);
  }
  else
  {
    removeObjVar(this, "canReportIdList");
    removeObjVar(this, "canReportNameList");
  }
  return(0x00);
}

trigger online
{
  if(isDead(this))
  {
    shortCallback(this, 0x14, 0x8C);
  }
  return(0x01);
}

trigger message("refreshAggression")
{
  refreshAggression(this);
  return(0x00);
}

trigger message("refreshCriminal")
{
  loc Q4F5 = args[0x00];
  committedCrimeAt(this, Q4F5, 0x01E0)return(0x00);
}

trigger message("changeReputation")
{
  changeFame(this, args[0x00]);
  changeKarma(this, args[0x01]);
  return(0x00);
}

trigger message("murderReport")
{
  int Q67H = args[0x00];
  int murderCount = 0x01 + getMurderCount(this);
  if(murderCount >= 0x05)
  {
    if(murderCount == 0x05)
    {
      systemMessage(this, "You are now known as a murderer!");
    }
    int Q4UR = 0x00;
    int Q4UT = 0x00;
    obj Q4UP = getItemAtSlot(this, 0x0B);
    if(Q4UP != NULL())
    {
      Q4UR = getHue(Q4UP);
      Q4UT = getObjType(Q4UP);
    }
    args = this, murderCount, getSex(this), Q4UT, Q4UR, getHue(this);
    multiMessageToLoc(getRelayLoc(this), "updateBountyDesc", args);
  }
  changeKarma(this, 0x00 - Q67H);
  setMurderCount(this, murderCount);
  callbackAdvanced(this, 0x0001C200, 0x11, 0x03);
  return(0x00);
}

trigger sawdeath
{
  if(!getCompileFlag(0x01))
  {
    return(0x00);
  }
  if(this != victim)
  {
    return(0x01);
  }
  shortCallback(this, 0x01, 0x8C);
  return(0x00);
}

trigger callback(0x8C)
{
  if(getMobFlag(this, 0x02))
  {
    shortCallback(this, 0x01, 0x8C);
    return(0x01);
  }
  Q4V1();
  return(0x01);
}

function void Q4DC()
{
  removeObjVar(this, "bountyGuardId");
  removeObjVar(this, "bountyPlayerName");
  return();
}

trigger callback(0x8D)
{
  if(hasObjVar(this, "bountyGuardId"))
  {
    obj Q4UF = getObjVar(this, "bountyGuardId");
    string Q5IU = getObjVar(this, "bountyPlayerName");
    string Q58D = "There was no bounty on " + Q5IU + ".";
    Q4DC();
    if(isValid(Q4UF))
    {
      if(getDistanceInTiles(getLocation(Q4UF), getLocation(this)) < 0x0A)
      {
        bark(Q4UF, Q58D);
        return(0x00);
      }
    }
    systemMessage(this, Q58D);
  }
  Q4DC();
  return(0x01);
}

trigger speech("*guards*")
{
  if(speaker == this)
  {
    return(0x01);
  }
  if(!isMurderer(this))
  {
    return(0x01);
  }
  if(!inJusticeRegion(getLocation(this)))
  {
    return(0x01);
  }
  callGuards(this, speaker, 0x03E8);
  return(0x00);
}

trigger message("bountyInfo")
{
  obj Q5IS = args[0x00];
  int bounty = args[0x01];
  string Q5IU = args[0x02];
  obj gold = createNoResObjectIn(0x0EED, this);
  int Q4Q1 = requestAddQuantity(gold, bounty);
  Q4Q1 = depositIntoBank(this, gold, bounty);
  removeCallback(this, 0x8D);
  if(hasObjVar(this, "bountyGuardId"))
  {
    obj Q4UF = getObjVar(this, "bountyGuardId");
    string Q58D = "The bounty on " + Q5IU + " was " + bounty + " gold, and has been credited to your account.";
    changeKarma(this, 0x07D0);
    Q4DC();
    if(isValid(Q4UF))
    {
      if(getDistanceInTiles(getLocation(Q4UF), getLocation(this)) < 0x0A)
      {
        bark(Q4UF, Q58D);
        return(0x00);
      }
    }
    systemMessage(this, Q58D);
  }
  return(0x00);
}