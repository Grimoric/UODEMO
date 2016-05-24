// UOSL (native)
inherits globals;

trigger use
{
  loc Q5QP = 0x14CA, 0x0247, 0x00;
  list Q5DQ;
  if((getObjType(this) == 0x108C) && (!hasObjVar(this, "working")))
  {
    setObjVar(this, "working", 0x01);
    messageToRange(Q5QP, 0x01, "unlocked", Q5DQ);
    setType(this, 0x108D);
    callback(this, 0x02, 0x24);
  }
  return(0x00);
}

trigger callback(0x24)
{
  if(hasObjVar(this, "working"))
  {
    if(getObjType(this) == 0x108D)
    {
      setType(this, 0x108E);
      callback(this, 0x02, 0x24);
      return(0x00);
    }
    if(getObjType(this) == 0x108E)
    {
      setType(this, 0x108C);
      removeObjVar(this, "working");
      return(0x00);
    }
  }
  return(0x00);
}