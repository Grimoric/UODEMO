// UOSL (native)
trigger message("trapCheck")
{
  list Q5IT;
  int damage;
  if(!hasObjVar(this, "disarmed"))
  {
    getPlayersInRange(Q5IT, getLocation(this), 0x03);
    for(int i = 0x00; i < numInList(Q5IT); i ++)
    {
      damage = dice(0x03, 0x05);
      setCurHP(Q5IT[i], getCurHP(Q5IT[i]) - damage);
    }
  }
  return(0x00);
}

trigger message("PPdisarm")
{
  int Q5DQ;
  if(!hasObjVar(this, "disarmed"))
  {
    setObjVar(this, "disarmed", Q5DQ);
  }
  return(0x00);
}

trigger message("PPreload")
{
  if(hasObjVar(this, "disarmed"))
  {
    removeObjVar(this, "disarmed");
  }
  return(0x00);
}