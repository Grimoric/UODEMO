// UOSL (enhanced)
inherits sndfx;

trigger enterrange<0x01>(obj target)
{
  if(!hasObjVar(this, "disarmed"))
  {
    doLocAnimation(getLocation(this), 0x1111, 0x02, 0x10, 0x00, 0x00);
    loseHP(target, dice(0x0A, 0x03));
    sfx(getLocation(this), 0x0225, 0x00);
  }
  return(0x01);
}

trigger message<"disarm">(obj sender, list args)
{
  if(!hasObjVar(this, "disarmed"))
  {
    setObjVar(this, "disarmed", 0x01);
    callback(this, 0xF0, 0x24);
  }
  return(0x00);
}

trigger callback<0x24>()
{
  if(hasObjVar(this, "disarmed"))
  {
    removeObjVar(this, "disarmed");
  }
  return(0x00);
}