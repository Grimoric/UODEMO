// UOSL (enhanced)
inherits globals;

member list Q641;

trigger message<"towncrieradd">(obj sender, list args)
{
  obj it = args[0x00];
  if(!isInList(Q641, it))
  {
    appendToList(Q641, it);
  }
  return(0x01);
}

trigger message<"towncrierremove">(obj sender, list args)
{
  obj it = args[0x00];
  if(isInList(Q641, it))
  {
    removeSpecificItem(Q641, it);
  }
  return(0x01);
}

function void Q55I(string Q56W, list args)
{
  int num = numInList(Q641);
  for(int i = 0x00; i < num; i ++)
  {
    obj it = Q641[i];
    multiMessage(it, Q56W, args);
  }
  return;
}

trigger message<"towncrieraddmessage">(obj sender, list args)
{
  Q55I("towncrieraddmessage", args);
  return(0x01);
}

trigger message<"towncrierremovemessage">(obj sender, list args)
{
  Q55I("towncrierremovemessage", args);
  return(0x01);
}

trigger decay(int oldvalue, int newvalue)
{
  return(0x00);
}