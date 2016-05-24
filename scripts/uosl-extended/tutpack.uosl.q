// UOSL (enhanced)
trigger use(obj user)
{
  if(isPlayer(user))
  {
    list args = 0x08;
    multimessage(user, "usedme", args);
  }
  return(0x01);
}