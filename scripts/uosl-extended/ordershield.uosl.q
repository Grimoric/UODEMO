// UOSL (enhanced)
inherits virtueshield;

trigger equip(obj equippedon)
{
  if(isNPC(equippedon))
  {
    return(0x01);
  }
  if(getCompileFlag(0x01))
  {
    if(hasScript(equippedon, "orderguild"))
    {
      return(0x01);
    }
  }
  else
  {
    if(Q4SN(equippedon) >= 0x05)
    {
      return(0x01);
    }
  }
  Q4HV();
  return(0x00);
}