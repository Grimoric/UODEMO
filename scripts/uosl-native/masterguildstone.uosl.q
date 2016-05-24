// UOSL (native)
inherits globals;

member list guilds;

forward void Q66E(list Q5CZ);
forward void Q4II(obj Q4GS);

trigger message("sendOtherGuilds")
{
  list Q4Q1;
  appendToList(Q4Q1, guilds);
  multimessage(sender, "otherGuildsUpdate", Q4Q1);
  return(0x01);
}

trigger decay
{
  return(0x00);
}

trigger message("IAmHere")
{
  int i;
  list Q663;
  obj Q55K;
  obj Q4R6;
  Q55K = args[0x00];
  int Q4QI = 0x00;
  for(i = 0x00; i < numInList(guilds); i ++)
  {
    Q4R6 = oprlist(guilds[i], 0x00);
    if(Q4R6 == Q55K)
    {
      Q4QI = 0x01;
    }
  }
  if(!Q4QI)
  {
    obj guild = args[0x00];
    string name = args[0x01];
    string Q44R = args[0x02];
    int Q65M = args[0x03];
    Q663 = guild, name, Q44R, Q65M;
    appendToList(guilds, Q663);
    Q66E(Q663);
  }
  return(0x01);
}

trigger creation
{
  setObjVar(this, "lookAtText", "This is the master guild object. Do not delete!");
  return(0x01);
}

trigger objectloaded
{
  int Q5T8 = numInList(guilds);
  for(int i = 0x00; i < Q5T8; i = i)
  {
    if(numInList(oprlist(guilds, i)) < 0x04)
    {
      removeItem(guilds, i);
      Q5T8 --;
    }
    else
    {
      i ++;
    }
  }
  return(0x01);
}

trigger message("newGuild")
{
  list Q663;
  obj guild = args[0x00];
  string name = args[0x01];
  string Q44R = args[0x02];
  int Q65M = args[0x03];
  Q663 = guild, name, Q44R, Q65M;
  appendToList(guilds, Q663);
  Q66E(Q663);
  return(0x01);
}

trigger message("deadGuild")
{
  list Q663;
  obj Q4GS = args[0x00];
  int Q4Y2;
  int Q4QI;
  obj Q4R6;
  for(int i = 0x00; i < numInList(guilds); i ++)
  {
    Q4R6 = oprlist(guilds[i], 0x00);
    if(Q4R6 == Q4GS)
    {
      Q4Y2 = i;
      Q4QI = 0x01;
    }
  }
  if(Q4QI)
  {
    removeItem(guilds, Q4Y2);
    Q4II(Q4GS);
  }
  return(0x00);
}

trigger message("requestChangeName")
{
  string Q5CU = args[0x00];
  debugMessage("MGS:name changed to '" + Q5CU + "'");
  list Q663;
  obj Q4R6;
  int i;
  int Q4Y2;
  string Q55K;
  for(i = 0x00; i < numInList(guilds); i ++)
  {
    Q4R6 = oprlist(guilds[i], 0x00);
    if(Q4R6 == sender)
    {
      Q4Y2 = i;
    }
    Q55K = oprlist(guilds[i], 0x01);
    if(Q55K == Q5CU)
    {
      multimessage(sender, "cannotChangeName", Q663);
      return(0x01);
    }
  }
  list Q5DA = Q5CU;
  multimessage(sender, "canChangeName", Q5DA);
  if(numInList(args) > 0x01)
  {
    return(0x01);
  }
  Q55K = oprlist(guilds[Q4Y2], 0x02);
  list Q5CZ = sender, Q5CU, Q55K;
  removeItem(guilds, Q4Y2);
  appendToList(guilds, Q5CZ);
  Q66E(Q5CZ);
  return(0x01);
}

trigger message("doesMyGuildExist")
{
  list Q663;
  obj Q4VT = args[0x00];
  obj m;
  int Q4QI;
  for(int i = 0x00; i < numInList(guilds); i ++)
  {
    m = oprlist(guilds[i], 0x00);
    if(m == Q4VT)
    {
      Q4QI = 0x01;
    }
  }
  if(!Q4QI)
  {
    multimessage(sender, "guildGone", args);
  }
  return(0x01);
}

trigger message("requestChangeAbbr")
{
  string Q5CH = args[0x00];
  list Q663;
  obj Q4R6;
  int i;
  int Q4Y2;
  string Q55K;
  for(i = 0x00; i < numInList(guilds); i ++)
  {
    Q4R6 = oprlist(guilds[i], 0x00);
    if(Q4R6 == sender)
    {
      Q4Y2 = i;
    }
    Q55K = oprlist(guilds[i], 0x02);
    if(Q55K == Q5CH)
    {
      multimessage(sender, "cannotChangeAbbr", Q663);
      return(0x01);
    }
  }
  Q55K = oprlist(guilds[Q4Y2], 0x01);
  list Q5CZ = sender, Q55K, Q5CH, 0x00;
  removeItem(guilds, Q4Y2);
  appendToList(guilds, Q5CZ);
  Q66E(Q5CZ);
  list Q5DA = Q5CH;
  multimessage(sender, "canChangeAbbr", Q5DA);
  return(0x01);
}

function void Q66E(list Q4B6)
{
  list Q663;
  obj guild;
  int i;
  for(i = 0x00; i < numInList(guilds); i ++)
  {
    guild = oprlist(guilds[i], 0x00);
    multimessage(guild, "updatedGuildList", Q4B6);
  }
  return();
}

function void Q4II(obj Q4GS)
{
  list Q663;
  obj guild;
  int i;
  list Q4I1 = Q4GS;
  for(i = 0x00; i < numInList(guilds); i ++)
  {
    guild = oprlist(guilds[i], 0x00);
    multimessage(guild, "disbanded", Q4I1);
  }
  return();
}

trigger lookedat
{
  int i;
  string name;
  string Q44R;
  int Q65M;
  list Q663;
  obj Q4XN;
  if(!isEditing(looker))
  {
    return(0x01);
  }
  systemMessage(looker, "" + numInList(guilds) + " guilds on the shard.");
  bark(this, "Guild list:");
  for(i = 0x00; i < numInList(guilds); i ++)
  {
    name = oprlist(guilds[i], 0x01);
    Q44R = oprlist(guilds[i], 0x02);
    Q4XN = oprlist(guilds[i], 0x00);
    Q65M = oprlist(guilds[i], 0x03);
    systemMessage(looker, name + ", [" + Q44R + "] ID:" + objtoint(Q4XN) + " Type:" + Q65M);
  }
  return(0x01);
}