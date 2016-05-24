// UOSL (enhanced)
inherits globals;

member obj recipient;
member list Q56Q;

trigger decay(int oldvalue, int newvalue)
{
  return(0x00);
}

trigger creation()
{
  recipient = getObjVar(this, "recipient");
  removeObjVar(this, "recipient");
  return(0x01);
}

trigger callback<0x4E>()
{
  deleteObjectNoFall(this);
  return(0x00);
}

trigger lookedat(obj looker)
{
  if(!isEditing(looker))
  {
    return(0x00);
  }
  systemMessage(looker, "Messages for " + objtoint(recipient) + ":");
  int Q5T8 = numInList(Q56Q);
  printList(Q56Q);
  for(int i = 0x00; i < Q5T8; i ++)
  {
    string Q56S = oprlist(Q56Q[0x00], 0x00);
    systemMessage(looker, Q56S);
  }
  return(0x00);
}

function void Q4DU()
{
  int Q5T8 = numInList(Q56Q);
  for(int i = 0x00; i < Q5T8; i ++)
  {
    list args;
    copyList(args, Q56Q[0x00]);
    string Q56S = args[0x00];
    removeItem(args, 0x00);
    message(recipient, Q56S, args);
    removeItem(Q56Q, 0x00);
  }
  deleteObjectNoFall(this);
  return;
}

trigger message<"addMessage">(obj sender, list args)
{
  appendToList(Q56Q, args);
  callback(this, 0x00278D00, 0x4E);
  return(0x00);
}

trigger message<"consolidate">(obj sender, list args)
{
  if(this == sender)
  {
    return(0x01);
  }
  obj Q5R4 = args[0x00];
  if(recipient != Q5R4)
  {
    return(0x01);
  }
  int Q5T8 = numInList(Q56Q);
  for(int i = 0x00; i < Q5T8; i ++)
  {
    message(sender, "addMessage", Q56Q[0x00]);
    removeItem(Q56Q, 0x00);
  }
  setDefaultReturn(0x01);
  deleteObjectNoFall(this);
  return(0x01);
}

trigger message<"collect">(obj sender, list args)
{
  if(recipient != sender)
  {
    return(0x01);
  }
  if(isValid(recipient))
  {
    Q4DU();
    return(0x01);
  }
  loc Q5XM = args[0x00];
  if(!isInMap(Q5XM))
  {
    int Q4Q1 = teleportNoFall(this, Q5XM);
  }
  return(0x01);
}

function void teleported()
{
  loc Q4WK = getRelayLoc(recipient);
  if(getLocation(this) == Q4WK)
  {
    list args;
    appendToList(args, recipient);
    messageToRange(Q4WK, 0x01, "consolidate", args);
    clearList(args);
    multiMessage(recipient, "requestCollection", args);
  }
  else
  {
    if(isValid(recipient))
    {
      Q4DU();
    }
    else
    {
      int Q4Q1 = teleportNoFall(this, Q4WK);
    }
  }
  return;
}

trigger message<"teleported">(obj sender, list args)
{
  teleported();
  return(0x01);
}

trigger objectloaded()
{
  teleported();
  return(0x01);
}

trigger serverswitch()
{
  teleported();
  return(0x01);
}