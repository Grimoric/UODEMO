// UOSL (enhanced)
trigger enterrange<0x02>(obj target)
{
  if(isPlayer(target))
  {
    list args = 0x01;
    multimessage(target, "foundme", args);
  }
  return(0x01);
}

trigger use(obj user)
{
  if(isPlayer(user))
  {
    list args = 0x01;
    multimessage(user, "usedme", args);
  }
  return(0x01);
}