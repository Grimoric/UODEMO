// UOSL (enhanced)
inherits sndfx;

trigger enterrange<0x02>(obj target)
{
  if(!hasObjVar(this, "working"))
  {
    sfx(getLocation(this), 0x011B, 0x00);
    setObjVar(this, "working", 0x01);
    callback(this, 0x02, 0x01);
    setType(this, 0x1126);
    loseHP(target, dice(0x02, 0x04));
  }
  return(0x01);
}

trigger callback<0x01>()
{
  if(hasObjVar(this, "working"))
  {
    removeObjVar(this, "working");
  }
  setType(this, 0x1125);
  if(!isInArea("dungn", getLocation(this), 0x00))
  {
    deleteObject(this);
  }
  return(0x00);
}