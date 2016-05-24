// UOSL (enhanced)
trigger<1000>enterrange<0x07>(obj target)
{
  if(isPlayer(target))
  {
    list args = 0x07;
    multimessage(target, "foundme", args);
  }
  return(0x01);
}

trigger gotattacked(obj attacker)
{
  if(isPlayer(attacker))
  {
    list args = 0x07;
    multimessage(attacker, "usedme", args);
  }
  return(0x01);
}

trigger death(obj attacker, obj corpse)
{
  attachScript(corpse, "6A");
  attachScript(corpse, "tutcorpse");
  return(0x01);
}