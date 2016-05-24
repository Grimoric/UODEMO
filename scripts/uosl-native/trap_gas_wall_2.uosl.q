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
  doLocAnimation(getLocation(this), 0x1145, 0x03, 0x10, 0x00, 0x00);
  return(0x01);
}

trigger enterrange(0x01)
{
  if(isDead(target))
  {
    return(0x01);
  }
  doLocAnimation(getLocation(this), 0x1145, 0x03, 0x10, 0x00, 0x00);
  loseHP(target, dice(0x03, 0x0A));
  return(0x01);
}