// UOSL (native)
trigger enterrange(0x00)
{
  int damage;
  if(!hasObjVar(this, "disarmed"))
  {
    damage = dice(0x03, 0x05);
    setCurHP(target, getCurHP(target) - damage);
  }
  return(0x00);
}

trigger message("FSdisarm")
{
  int Q5DQ;
  if(!hasObjVar(this, "disarmed"))
  {
    setObjVar(this, "disarmed", Q5DQ);
  }
  return(0x00);
}

trigger message("FSreload")
{
  int Q5DQ;
  if(!hasObjVar(this, "disarmed"))
  {
    setObjVar(this, "disarmed", Q5DQ);
  }
  return(0x00);
}