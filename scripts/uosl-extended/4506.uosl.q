// UOSL (enhanced)
function void activate(obj victim)
{
  loc Q61V = getLocation(this);
  doLocAnimation(Q61V, 0x119B, 0x0A, 0x05, 0x00, 0x00);
  list Q67L;
  getObjectsAt(Q67L, Q61V);
  appendToList(Q67L, victim);
  int Q53A = numInList(Q67L);
  for(int i = 0x00; i < Q53A; i ++)
  {
    if(isMobile(Q67L[i]))
    {
      loseHP(Q67L[i], 0x0A);
    }
  }
  return;
}

trigger message<"activate">(obj sender, list args)
{
  activate(this);
  return(0x01);
}

trigger enterrange<0x00>(obj target)
{
  activate(target);
  return(0x01);
}