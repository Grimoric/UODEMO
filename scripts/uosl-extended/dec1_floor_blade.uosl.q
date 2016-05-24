// UOSL (enhanced)
inherits globals;

trigger message<"saws_on">(obj sender, list args)
{
  if(!hasObjVar(this, "armed"))
  {
    setType(this, 0x11B2);
    setObjVar(this, "armed", 0x01);
    callback(this, 0x01, 0x24);
  }
  return(0x00);
}

trigger enterrange<0x01>(obj target)
{
  if(hasObjVar(this, "armed"))
  {
    loseHP(target, dice(0x0A, 0x14));
  }
  return(0x01);
}

trigger callback<0x24>()
{
  list Q67G;
  getPlayersInRange(Q67G, getLocation(this), 0x01);
  if(!numInList(Q67G) == 0x00)
  {
    for(int i = 0x00; i < numInList(Q67G); i ++)
    {
      if(hasObjVar(this, "armed"))
      {
        loseHP(Q67G[i], dice(0x0A, 0x14));
      }
    }
    callback(this, 0x01, 0x24);
    return(0x00);
  }
  clearList(Q67G);
  getPlayersInRange(Q67G, getLocation(this), 0x1E);
  if(numInList(Q67G) == 0x00)
  {
    setType(this, 0x11B1);
    if(hasObjVar(this, "armed"))
    {
      removeObjVar(this, "armed");
    }
  }
  else
  {
    callback(this, 0x01, 0x24);
  }
  return(0x00);
}