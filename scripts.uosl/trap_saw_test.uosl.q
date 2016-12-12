// UOSL (native)
trigger enterrange(0x00)
{
  if(isDead(target))
  {
    return(0x01);
  }
  if(!hasObjVar(this, "disarmed"))
  {
    doLocAnimation(getLocation(this), 0x11AD, 0x02, 0x10, 0x00, 0x00);
  }
  return(0x01);
}