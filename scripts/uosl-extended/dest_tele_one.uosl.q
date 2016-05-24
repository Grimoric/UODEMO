// UOSL (enhanced)
trigger enterrange<0x02>(obj target)
{
  loc toLocation = 0x1417, 0x0322, 0x03;
  if(getY(getLocation(target)) > getY(getLocation(this)))
  {
    return(0x01);
  }
  if(!teleport(target, toLocation))
  {
    return(0x00);
  }
  return(0x01);
}