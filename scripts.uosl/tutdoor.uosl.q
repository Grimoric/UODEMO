// UOSL (native)
trigger enterrange(0x02)
{
  if(isPlayer(target))
  {
    list args = 0x01;
    multimessage(target, "foundme", args);
  }
  return(0x01);
}

trigger use
{
  if(isPlayer(user))
  {
    list args = 0x01;
    multimessage(user, "usedme", args);
  }
  return(0x01);
}