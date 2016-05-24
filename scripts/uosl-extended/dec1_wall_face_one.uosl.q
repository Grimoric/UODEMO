// UOSL (enhanced)
inherits globals;

trigger message<"chest_wall_fire_check">(obj sender, list args)
{
  list Q67G;
  if(!hasObjVar(this, "disarmed"))
  {
    setType(this, 0x1111);
    callback(this, 0x05, 0x23);
    getMobsInRange(Q67G, getLocation(this), 0x03);
    for(int i = 0x00; i < numInList(Q67G); i ++)
    {
      loseHP(Q67G[i], dice(0x14, 0x05));
    }
  }
  return(0x00);
}

trigger message<"wall_trap_disarm">(obj sender, list args)
{
  int Q5DQ;
  if(!hasObjVar(this, "disarmed"))
  {
    setObjVar(this, "disarmed", Q5DQ);
  }
  return(0x00);
}

trigger message<"wall_trap_reload">(obj sender, list args)
{
  if(hasObjVar(this, "disarmed"))
  {
    removeObjVar(this, "disarmed");
  }
  return(0x00);
}

trigger callback<0x23>()
{
  list Q67G;
  getMobsInRange(Q67G, getLocation(this), 0x03);
  if(numInList(Q67G) == 0x00)
  {
    setType(this, 0x1110);
    return(0x00);
  }
  for(int i = 0x00; i < numInList(Q67G); i ++)
  {
    loseHP(Q67G[i], dice(0x14, 0x05));
  }
  callback(this, 0x05, 0x23);
  return(0x00);
}