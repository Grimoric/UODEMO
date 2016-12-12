// UOSL (native)
inherits globals;

trigger creation
{
  setType(this, 0x01);
  return(0x00);
}

trigger enterrange(0x03)
{
  if(isDead(target))
  {
    return(0x01);
  }
  if(!hasObjVar(this, "disarmed"))
  {
    doLocAnimation(getLocation(this), 0x11A6, 0x04, 0x18, 0x00, 0x00);
    callBack(this, 0x03, 0x24);
  }
  return(0x01);
}

trigger enterrange(0x01)
{
  if(isDead(target))
  {
    return(0x01);
  }
  if(!hasObjVar(this, "disarmed"))
  {
    doLocAnimation(getLocation(this), 0x11A6, 0x04, 0x18, 0x00, 0x00);
    callBack(this, 0x03, 0x24);
  }
  return(0x01);
}

trigger enterrange(0x00)
{
  if(isDead(target))
  {
    return(0x01);
  }
  int damage;
  if(!hasObjVar(this, "disarmed"))
  {
    doLocAnimation(getLocation(this), 0x11A6, 0x04, 0x18, 0x00, 0x00);
    damage = dice(0x02, 0x14);
    loseHP(target, damage);
  }
  return(0x01);
}