// UOSL (enhanced)
inherits globals;

trigger creation()
{
  setType(this, 0x01);
  return(0x00);
}

trigger enterrange<0x00>(obj target)
{
  if(isDead(target))
  {
    return(0x01);
  }
  if(!hasObjVar(this, "working"))
  {
    setObjVar(this, "working", 0x01);
    setType(this, 0x1122);
    shortCallback(this, 0x02, 0x26);
  }
  return(0x01);
}

trigger callback<0x26>()
{
  int Q61Y = getObjType(this);
  if(Q61Y == 0x1122)
  {
    setType(this, 0x1123);
    shortCallback(this, 0x02, 0x26);
    return(0x01);
  }
  if(Q61Y == 0x1123)
  {
    setType(this, 0x1124);
    shortCallback(this, 0x02, 0x26);
    return(0x01);
  }
  if(Q61Y == 0x1124)
  {
    setType(this, 0x01);
    if(hasObjVar(this, "working"))
    {
      removeObjVar(this, "working");
    }
    return(0x01);
  }
  return(0x01);
}