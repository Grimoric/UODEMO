// UOSL (native)
trigger enterrange(0x03)
{
  if(isPlayer(target))
  {
    list args = 0x02;
    multimessage(target, "foundme", args);
  }
  return(0x01);
}

trigger leaverange(0x03)
{
  if(isPlayer(target))
  {
    list args = 0x02;
    multimessage(target, "leftme", args);
  }
  return(0x01);
}

trigger use
{
  if(isPlayer(user))
  {
    list args = 0x02;
    multimessage(user, "usedme", args);
  }
  return(0x01);
}