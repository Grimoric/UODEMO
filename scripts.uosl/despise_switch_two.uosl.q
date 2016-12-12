// UOSL (native)
inherits globals;

trigger use
{
  list Q5DQ;
  if(!hasObjVar(this, "trapLocation"))
  {
    systemMessage(this, "No Trap Location Variable.");
    return(0x00);
  }
  loc trapLocation = getObjVar(this, "trapLocation");
  messageToRange(trapLocation, 0x02, "disarm", Q5DQ);
  callback(this, 0x0258, 0x26);
  return(0x01);
}

trigger callback(0x26)
{
  list Q5DQ;
  loc trapLocation = getObjVar(this, "trapLocation");
  messageToRange(trapLocation, 0x02, "reset", Q5DQ);
  return(0x00);
}