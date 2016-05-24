// UOSL (native)
trigger use
{
  if(!hasObjVar(this, "unlocked"))
  {
    bark(this, "This door appears to be locked.");
    return(0x00);
  }
  return(0x01);
}

trigger message("unlock")
{
  if(!hasObjVar(this, "unlocked"))
  {
    setObjVar(this, "unlocked", 0x01);
    callback(this, 0x3C, 0x01);
  }
  return(0x00);
}

trigger callback(0x01)
{
  if(hasObjVar(this, "unlocked"))
  {
    removeObjVar(this, "unlocked");
  }
  return(0x00);
}