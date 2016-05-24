// UOSL (native)
inherits globals;

forward void addMessage(list );
forward void Q5T0();
forward int Q4PC(string );

member string Q4FN;

trigger creation
{
  list Q58D;
  setObjVar(this, "oracleMessages", Q58D);
  return(0x00);
}

function void addMessage(list Q58D)
{
  list Q45T;
  getObjListVar(Q45T, this, "oracleMessages");
  appendToList(Q45T, Q58D);
  setObjVar(this, "oracleMessages", Q45T);
  bark(this, "Message added.");
  return();
}

function void Q5T0()
{
  list Q45T;
  getObjListVar(Q45T, this, "oracleMessages");
  if(numInList(Q45T) < 0x01)
  {
    bark(this, "No messages are set.");
    return();
  }
  string Q51K;
  string t;
  list Q663;
  for(int i = 0x00; i < numInList(Q45T); i ++)
  {
    copyList(Q663, Q45T[i]);
    Q51K = Q663[0x00];
    t = Q663[0x01];
    bark(this, "'" + t + "', Keyword: '" + Q51K + "'.'");
  }
  return();
}

function int Q4PC(string Q51K)
{
  int Q4Y2;
  list a;
  getObjListVar(a, this, "oracleMessages");
  list Q663;
  string Q55K;
  for(int i = 0x00; i < numInList(a); i ++)
  {
    copyList(Q663, a[i]);
    Q55K = Q663[0x00];
    if(Q51K == Q55K)
    {
      return(Q4Y2);
    }
  }
  return(0x00 - 0x01);
}

trigger textentry(0x22)
{
  Q4FN = text;
  bark(this, "Adding text '" + Q4FN + "'.");
  systemMessage(sender, "Enter the keyword that will trigger this response.");
  textEntry(this, sender, 0x24, 0x00, "");
  return(0x00);
}

trigger textentry(0x24)
{
  list u = text, Q4FN;
  addMessage(u);
  return(0x00);
}

trigger textentry(0x23)
{
  int Q4Y2 = Q4PC(text);
  if(Q4Y2 == (0x00 - 0x01))
  {
    systemMessage(sender, "That keyword was not found.");
    return(0x00);
  }
  list a;
  getObjListVar(a, this, "oracleMessages");
  removeItem(a, Q4Y2);
  systemMessage(sender, "Oracle string removed.");
  setObjVar(this, "oracleMessages", a);
  return(0x00);
}

trigger use
{
  int Q45V = 0x00;
  if(hasObjVar(user, "allowedToEditOracle"))
  {
    Q45V = 0x01;
  }
  if(isEditing(user))
  {
    Q45V = 0x01;
  }
  if(!Q45V)
  {
    return(0x01);
  }
  list Q56N;
  appendToList(Q56N, 0x00);
  appendToList(Q56N, "View conversation strings.");
  appendToList(Q56N, 0x01);
  appendToList(Q56N, "Add a conversation string.");
  appendToList(Q56N, 0x02);
  appendToList(Q56N, "Remove a conversation string.");
  appendToList(Q56N, 0x03);
  appendToList(Q56N, "Clear all conversation strings.");
  selectType(user, this, 0x3A, "ORACLE CONTROL MENU", Q56N);
  return(0x00);
}

trigger typeselected(0x3A)
{
  if(listindex == 0x00)
  {
    return(0x00);
  }
  switch(objtype)
  {
  case 0x00
    Q5T0();
    break;
  case 0x01
    systemMessage(user, "Enter the text of the oracle message:");
    textEntry(this, user, 0x22, 0x00, "");
    break;
  case 0x02
    systemMessage(user, "Enter the keyword of the message to remove:");
    textEntry(this, user, 0x23, 0x00, "");
    break;
  case 0x03
    list Q48F;
    setObjVar(this, "oracleMessages", Q48F);
    systemMessage(user, "All oracle messages cleared.");
    break;
  default
    return(0x00);
    break;
  }
  return(0x00);
}

function int Q4QL(list w)
{
  list a;
  getObjListVar(a, this, "oracleMessages");
  string Q51K;
  string Q55K;
  list Q663;
  for(int i = 0x00; i < numInList(w); i ++)
  {
    Q55K = w[i];
    for(int Q518 = 0x00; Q518 < numInList(a); Q518 ++)
    {
      copyList(Q663, a[Q518]);
      Q51K = Q663[0x00];
      if(Q51K == Q55K)
      {
        return(Q518);
      }
    }
  }
  return(0xFF);
}

function string Q5GJ(int Q4XT)
{
  list Q663;
  list a;
  getObjListVar(a, this, "oracleMessages");
  copyList(Q663, a[Q4XT]);
  string Q65L = Q663[0x01];
  return(Q65L);
}

trigger speech("*")
{
  if(getDistanceInTiles(getLocation(this), getLocation(speaker)) > 0x04)
  {
    return(0x01);
  }
  list Q69B;
  split(Q69B, arg);
  int Q4QI = Q4QL(Q69B);
  if(Q4QI != 0xFF)
  {
    bark(this, Q5GJ(Q4QI));
    return(0x00);
  }
  return(0x01);
}