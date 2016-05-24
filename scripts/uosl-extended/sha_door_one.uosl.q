// UOSL (enhanced)
trigger creation()
{
  setObjVar(this, "isLocked", 0x0100);
  return(0x00);
}

trigger message<"unlock">(obj sender, list args)
{
  if(hasObjVar(this, "isLocked"))
  {
    removeObjVar(this, "isLocked");
  }
  return(0x00);
}

trigger message<"lockup">(obj sender, list args)
{
  bark(this, "I should be locked");
  if(!hasObjVar(this, "isLocked"))
  {
    setObjVar(this, "isLocked", 0x0100);
  }
  return(0x00);
}

trigger use(obj user)
{
  if(hasObjVar(this, "isLocked"))
  {
    bark(this, "It appears to be locked.");
    return(0x00);
  }
  return(0x01);
}