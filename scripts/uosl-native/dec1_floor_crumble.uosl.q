// UOSL (native)
inherits globals;

trigger enterrange(0x00)
{
  loc toLocation = 0x14A6, 0x0236, 0x00;
  doLocAnimation(getLocation(this), 0x11C1, 0x03, 0x0F, 0x00, 0x00);
  if(!teleport(target, toLocation))
  {
    return(0x01);
  }
  loseHP(target, dice(0x14, 0x0A));
  return(0x00);
}