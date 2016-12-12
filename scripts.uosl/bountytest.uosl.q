// UOSL (native)
inherits globals;

trigger lookedat
{
  if(!hasObjVar(this, "bountyPlayer"))
  {
    return(0x01);
  }
  obj player = getObjVar(this, "bountyPlayer");
  barkTo(this, looker, "RelayLoc=" + getRelayLoc(player));
  return(0x00);
}

trigger targetobj
{
  if(usedon == NULL())
  {
    removeObjVar(this, "bountyPlayer");
    removeObjVar(this, "bountyPlayerName");
    return(0x00);
  }
  if(!isPlayer(usedon))
  {
    removeObjVar(this, "bountyPlayer");
    removeObjVar(this, "bountyPlayerName");
    return(0x00);
  }
  systemMessage(user, getName(usedon) + " selected.");
  setObjVar(this, "bountyPlayer", usedon);
  setObjVar(this, "bountyPlayerName", getName(usedon));
  return(0x00);
}

trigger use
{
  obj player = user;
  if(!hasObjVar(this, "bountyPlayer"))
  {
    systemMessage(user, "Select player to bounty:");
    targetObj(user, this);
    return(0x00);
  }
  string Q5IU = "PD BugKiller";
  if(hasObjVar(this, "bountyPlayerName"))
  {
    Q5IU = getObjVar(this, "bountyPlayerName");
  }
  systemMessage(user, "creating bounty for (" + objtoint(player) + ".");
  obj bountyInfo = createNoResObjectAt(0x01, getLocation(user));
  setObjVar(bountyInfo, "subject", player);
  attachScript(bountyInfo, "bountyinfo");
  list args = player, 0x029A, 0x00, Q5IU;
  message(bountyInfo, "addBounty", args);
  int Q4Q1 = teleport(bountyInfo, getRelayLoc(player));
  if(isValid(bountyInfo))
  {
    clearList(args);
    message(bountyInfo, "teleported", args);
  }
  args = getAdjFame(user);
  systemMessage(user, "MurderReport: Messaging via probe to " + objtoint(user) + ".");
  Q56V(player, "murderReport", args);
  obj head = createNoResObjectIn(0x1DA0, getBackpack(user));
  setObjVar(head, "nameVar", Q5IU);
  setObjVar(head, "controller", player);
  return(0x00);
}