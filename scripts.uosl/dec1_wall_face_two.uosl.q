// UOSL (native)
inherits globals;

trigger message("wall_trap_check")
{
  list Q67G;
  if(!hasObjVar(this, "disarmed"))
  {
    setType(this, 0x10F6);
    callback(this, 0x05, 0x24);
    getMobsInRange(Q67G, getLocation(this), 0x03);
    for(int i = 0x00; i < numInList(Q67G); i ++)
    {
      loseHP(Q67G[i], dice(0x14, 0x05));
    }
  }
  return(0x00);
}

trigger message("wall_trap_two_disarm")
{
  int Q5DQ;
  if(!hasObjVar(this, "disarmed"))
  {
    setObjVar(this, "disarmed", Q5DQ);
  }
  return(0x00);
}

trigger message("wall_trap_two_reload")
{
  if(hasObjVar(this, "disarmed"))
  {
    removeObjVar(this, "disarmed");
  }
  return(0x00);
}

trigger callback(0x24)
{
  list Q67G;
  getMobsInRange(Q67G, getLocation(this), 0x03);
  if(numInList(Q67G) == 0x00)
  {
    setType(this, 0x10F5);
    return(0x00);
  }
  for(int i = 0x00; i < numInList(Q67G); i ++)
  {
    loseHP(Q67G[i], dice(0x14, 0x05));
  }
  callback(this, 0x05, 0x24);
  return(0x00);
}