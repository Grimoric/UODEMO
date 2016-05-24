// UOSL (enhanced)
trigger enterrange<0x03>(obj target)
{
  doLocAnimation(getLocation(this), 0x3709, 0x01, 0x38, 0x00, 0x00);
  return(0x01);
}

trigger enterrange<0x00>(obj target)
{
  doLocAnimation(getLocation(this), 0x3709, 0x01, 0x0100, 0x00, 0x00);
  loseHP(target, dice(0x08, 0x08));
  return(0x01);
}