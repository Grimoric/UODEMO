// UOSL (enhanced)
inherits globals;

member list Q490;
member list Q48J;

trigger decay(int oldvalue, int newvalue)
{
  return(0x00);
}

trigger objectloaded()
{
  clearList(Q490);
  clearList(Q48J);
  callback(this, 0x0A, 0x2F);
  return(0x01);
}

function int Q4T6()
{
  int Q4NR = numInList(Q490);
  int start = Q4NR - 0x14;
  if(start < 0x00)
  {
    start = 0x00;
  }
  return(start);
}

function int Q4RL()
{
  return(numInList(Q490));
}

trigger lookedat(obj looker)
{
  int start = Q4T6();
  int Q4NR = Q4RL();
  int Q55T = 0x00;
  int Q576 = 0x00;
  if(Q4NR > 0x00)
  {
    Q55T = oprlist(Q490[Q4NR - 0x01], 0x01);
    Q576 = oprlist(Q490[start], 0x01);
  }
  barkTo(this, looker, "" + Q4NR + " bounties starting at #" + start + " and ranging from " + Q576 + " to " + Q55T + " are posted on " + numInList(Q48J) + " bounty boards.");
  return(0x00);
}

function void Q66B(int start, int Q4NR)
{
  if(hasCallback(this, 0x2F))
  {
    return;
  }
  for(int Q518 = numInList(Q48J) - 0x01; Q518 >= 0x00; Q518 --)
  {
    list args;
    multiMessage(Q48J[Q518], "clearBounties", args);
    for(int i = Q4NR - 0x01; i >= start; i --)
    {
      debugMessage("updating board#" + Q518 + " with bounty#" + i + ".");
      multiMessage(Q48J[Q518], "setBounty", Q490[i]);
    }
  }
  return;
}

trigger callback<0x2F>()
{
  Q66B(Q4T6(), Q4RL());
  return(0x01);
}

trigger message<"registerBoard">(obj sender, list args)
{
  appendToList(Q48J, sender);
  return(0x01);
}

function int addBounty(list args)
{
  int bounty = args[0x01];
  int Q5T8 = numInList(Q490);
  for(int i = 0x00; i < Q5T8; i ++)
  {
    int Q4FD = oprlist(Q490[i], 0x01);
    if(bounty <= Q4FD)
    {
      break;
    }
  }
  if(Q5T8 >= 0x32)
  {
    if(i <= 0x00)
    {
      return(0x00 - 0x01);
    }
    i --;
    removeItem(Q490, 0x00);
  }
  insertInList(Q490, args, i);
  return(i);
}

trigger message<"updateBounty">(obj sender, list args)
{
  obj subject = args[0x00];
  int bounty = args[0x01];
  int Q5T8 = numInList(Q490);
  string name = args[0x02];
  debugMessage("Bounty updating:  " + bounty + " gold for " + name + ".");
  for(int i = 0x00; i < Q5T8; i ++)
  {
    obj Q4FO = oprlist(Q490[i], 0x00);
    if(Q4FO == subject)
    {
      break;
    }
  }
  int Q45H;
  int start;
  if(i == Q5T8)
  {
    if(bounty == 0x00)
    {
      return(0x01);
    }
    Q45H = addBounty(args);
    start = Q4T6();
    if(Q45H < start)
    {
      return(0x01);
    }
    Q66B(start, Q4RL());
  }
  else
  {
    int Q5FW = oprlist(Q490[i], 0x01);
    debugMessage("updating existing bounty from " + Q5FW + " to " + bounty + ".");
    if(Q5FW == bounty)
    {
      return(0x01);
    }
    removeItem(Q490, i);
    if(bounty > 0x00)
    {
      Q45H = addBounty(args);
      if(i < Q45H)
      {
        i = Q45H;
      }
    }
    start = Q4T6();
    if(i < start)
    {
      return(0x01);
    }
    Q66B(start, Q4RL());
  }
  return(0x01);
}