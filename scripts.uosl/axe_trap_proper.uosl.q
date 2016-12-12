// UOSL (native)
trigger enterrange(0x03)
{
  if(!hasObjVar(this, "disarmed"))
  {
    setType(this, 0x114C);
  }
  return(0x01);
}

trigger enterrange(0x02)
{
  if(!hasObjVar(this, "disarmed"))
  {
    loseHP(target, dice(0x14, 0x05));
  }
  return(0x01);
}

trigger leaverange(0x04)
{
  setType(this, 0x114B);
  return(0x01);
}

trigger message("axe_disarm")
{
  int Q5DQ;
  if(!hasObjVar(this, "disarmed"))
  {
    setObjVar(this, "disarmed", Q5DQ);
  }
  return(0x00);
}

trigger message("axe_reload")
{
  if(hasObjVar(this, "disarmed"))
  {
    removeObjVar(this, "disarmed");
  }
  return(0x00);
}