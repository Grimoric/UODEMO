// UOSL (native)
inherits globals;

trigger enterrange(0x01)
{
  if(!hasObjVar(this, "disarmed"))
  {
    doLocAnimation(getLocation(this), 0x10FE, 0x02, 0x10, 0x00, 0x00);
    loseHP(target, dice(0x0A, 0x03));
  }
  return(0x01);
}

trigger message("covThreeFireTrapDisarm")
{
  if(!hasObjVar(this, "disarmed"))
  {
    setObjVar(this, "disarmed", 0x01);
    callback(this, 0x78, 0x24);
  }
  return(0x00);
}

trigger callback(0x24)
{
  if(hasObjVar(this, "disarmed"))
  {
    removeObjVar(this, "disarmed");
  }
  return(0x00);
}

trigger 300 time("min:**")
{
  if(!hasObjVar(this, "disarmed"))
  {
    doLocAnimation(getLocation(this), 0x10FE, 0x02, 0x10, 0x00, 0x00);
  }
  return(0x00);
}