// UOSL (native)
inherits globals;

member list Q5GL;

trigger creation
{
  clearList(Q5GL);
  Q5GL = "The ghostly shadows have...";
  return(0x00);
}

trigger use
{
  bark(this, Q5GL[random(0x00, numInList(Q5GL) - 0x01)]);
  return(0x00);
}

trigger speech("*")
{
  appendToList(Q5GL, arg);
  if(numInList(Q5GL) > 0x0A)
  {
    removeItem(Q5GL, 0x00);
  }
  return(0x00);
}

trigger message("makeMeTalk")
{
  bark(sender, Q5GL[random(0x00, numInList(Q5GL) - 0x01)]);
  return(0x00);
}

trigger message("newAddition")
{
  string Q45J = args[0x00];
  appendToList(Q5GL, Q45J);
  if(numInList(Q5GL) > 0x00)
  {
    removeItem(Q5GL, 0x00);
  }
  return(0x00);
}