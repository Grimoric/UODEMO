// UOSL (native)
trigger use
{
  if(isPlayer(user))
  {
    list args = 0x08;
    multimessage(user, "usedme", args);
  }
  return(0x01);
}