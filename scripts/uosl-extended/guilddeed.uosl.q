// UOSL (enhanced)
inherits housestuff;

trigger creation()
{
  member loc Q55H = 0x00, 0x00, (0x00 - 0x50);
  setObjVar(this, "lookAtText", "a guild deed");
  return(0x01);
}

trigger use(obj user)
{
  member obj Q4QV = user;
  member obj myHome;
  obj Q4UO;
  if(hasObjVar(Q4QV, "guildstoneId"))
  {
    barkTo(Q4QV, Q4QV, "You must resign from your current guild before founding another!");
    return(0x00);
  }
  Q4UO = isAnyMultiBelow(getLocation(Q4QV));
  myHome = Q4UO;
  if(myHome == NULL())
  {
    barkTo(Q4QV, Q4QV, "You can only place a guildstone in a house or on a ship.");
    return(0x00);
  }
  if(!Q593(myHome, Q4QV))
  {
    barkTo(Q4QV, Q4QV, "You can only place a guildstone in a house or ship you own!");
    return(0x00);
  }
  if(Q58Q(myHome))
  {
    barkTo(Q4QV, Q4QV, "Only one guildstone may reside in a given house or ship.");
    return(0x00);
  }
  member loc Q4UM = getLocation(Q4QV);
  systemMessage(Q4QV, "Enter the name of your new guild:");
  textEntry(this, Q4QV, 0x1B, 0x00, "");
  return(0x00);
}

trigger textentry<0x1B>(obj sender, int button, string text)
{
  if(isObscene(text))
  {
    barkTo(Q4QV, Q4QV, "That name is not permissible.");
    return(0x00);
  }
  if(button != 0x00)
  {
    list Q53D = text, 0x01;
    multiMessageToLoc(Q55H, "requestChangeName", Q53D);
    return(0x00);
  }
  barkTo(Q4QV, Q4QV, "Placement of guildstone cancelled.");
  return(0x00);
}

trigger message<"cannotChangeName">(obj sender, list args)
{
  list Q4E0;
  copyList(Q4E0, args);
  string Q58D;
  string Q5C2 = Q4E0[0x01];
  Q58D = "There is already a guild named " + Q5C2 + " on this shard.";
  barkTo(Q4QV, Q4QV, Q58D);
  return(0x01);
}

trigger message<"canChangeName">(obj sender, list args)
{
  string name = args[0x00];
  string Q58D = "A new guild hath been founded, to be called " + name + "!";
  barkTo(Q4QV, Q4QV, Q58D);
  obj guild = createNoResObjectAt(0x0ED5, Q4UM);
  if(!Q58X(myHome, guild))
  {
    barkTo(Q4QV, Q4QV, "Only one guildstone may reside in on a given house or ship.");
    deleteObject(guild);
    return(0x00);
  }
  setObjVar(guild, "guildName", name);
  setObjVar(guild, "lookAtText", "The Guildstone for " + name);
  Q4X0(guild);
  setObjVar(guild, "myHome", myHome);
  attachScript(guild, "guildstone");
  deleteObject(this);
  return(0x01);
}