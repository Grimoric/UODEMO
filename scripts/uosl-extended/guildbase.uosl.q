// UOSL (enhanced)
inherits multistuff;

function string Q4RE(obj player)
{
  string name;
  if(hasObjVar(player, "origName"))
  {
    name = getObjVar(player, "origName");
  }
  else
  {
    name = getName(player);
  }
  return(name);
}

function int Q4RR()
{
  if(!hasObjVar(this, "guildType"))
  {
    return(0x00);
  }
  return(getObjVar(this, "guildType"));
}

function string Q4RT(int Q65M)
{
  string Q65P;
  switch(Q65M)
  {
  case 0x02:
    Q65P = "an order";
    break;
  case 0x03:
    Q65P = "a chaos";
    break;
  default:
    Q65P = "a standard";
    break;
  }
  return(Q65P);
}

function string Q4RS(int Q65M)
{
  string Q65P;
  switch(Q65M)
  {
  case 0x02:
    Q65P = "(Order)";
    break;
  case 0x03:
    Q65P = "(Chaos)";
    break;
  default:
    Q65P = "";
    break;
  }
  return(Q65P);
}

function string Q4RV(int Q65M)
{
  string Q5OM;
  switch(Q65M)
  {
  case 0x02:
    Q5OM = "orderguildstone";
    break;
  case 0x03:
    Q5OM = "chaosguildstone";
    break;
  default:
    Q5OM = "guildstone";
    break;
  }
  return(Q5OM);
}

function string Q4RU(int Q65M)
{
  string Q5OM;
  switch(Q65M)
  {
  case 0x02:
    Q5OM = "orderguild";
    break;
  case 0x03:
    Q5OM = "chaosguild";
    break;
  default:
    Q5OM = "";
    break;
  }
  return(Q5OM);
}

function int Q56L(obj player, int Q65M)
{
  string Q5OM = Q4RU(Q65M);
  if(Q5OM == "")
  {
    return(0x01);
  }
  list args;
  if(hasScript(player, Q5OM))
  {
    message(player, "checkGuildRequirements", args);
  }
  else
  {
    attachScript(player, Q5OM);
    message(player, "checkGuildRequirements", args);
    detachScript(player, Q5OM);
  }
  int Q56Y = getObjVar(player, "metGuildRequirements");
  removeObjVar(player, "metGuildRequirements");
  return(Q56Y);
}

function void Q5MP(obj player)
{
  list args;
  if(!hasObjVar(player, "guildstoneId"))
  {
    message(player, "removedFromGuild", args);
    return;
  }
  obj Q4XN = getObjVar(player, "guildstoneId");
  list info = Q4RE(player);
  if(Q4XN == NULL())
  {
    message(player, "removedFromGuild", args);
    return;
  }
  multimessage(Q4XN, "removeFromGuild", info);
  message(player, "removedFromGuild", args);
  return;
}