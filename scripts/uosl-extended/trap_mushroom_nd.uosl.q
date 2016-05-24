// UOSL (enhanced)
trigger enterrange<0x02>(obj target)
{
  if(isDead(target))
  {
    return(0x01);
  }
  if(!hasObjVar(this, "working"))
  {
    setObjVar(this, "working", 0x01);
    callback(this, 0x02, 0x01);
    doLocAnimation(getLocation(this), 0x1126, 0x02, 0x05, 0x00, 0x00);
  }
  return(0x01);
}

trigger callback<0x01>()
{
  if(hasObjVar(this, "working"))
  {
    removeObjVar(this, "working");
  }
  return(0x00);
}