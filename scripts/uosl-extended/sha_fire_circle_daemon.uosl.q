// UOSL (enhanced)
inherits globals;

trigger creation()
{
  setType(this, 0x01);
  return(0x00);
}

trigger enterrange<0x00>(obj target)
{
  list Q5DQ;
  if(!hasObjVar(this, "working"))
  {
    setObjVar(this, "working", 0x01);
    messageToRange(getLocation(this), 0x0A, "poof", Q5DQ);
    callback(this, 0x05, 0x24);
  }
  return(0x01);
}

trigger callback<0x24>()
{
  list Q67G;
  int Q64U;
  loc Q648;
  if(hasObjVar(this, "working"))
  {
    removeObjVar(this, "working");
    getMobsInRange(Q67G, getLocation(this), 0x04);
    for(int i = 0x00; i < numInList(Q67G); i ++)
    {
      Q648 = (0x1647 + i), 0x20, 0x00;
      Q64U = teleport(Q67G[i], Q648);
    }
  }
  return(0x00);
}