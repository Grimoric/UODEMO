// UOSL (native)
inherits globals;

trigger message("blades")
{
  list Q67G;
  getMobsInRange(Q67G, getLocation(this), 0x01);
  doLocAnimation(getLocation(this), 0x11AD, 0x02, 0x0A, 0x00, 0x00);
  if(!numInList(Q67G) == 0x00)
  {
    for(int i = 0x00; i < numInList(Q67G); i ++)
    {
      loseHP(Q67G[i], dice(0x0A, 0x05));
    }
  }
  return(0x00);
}