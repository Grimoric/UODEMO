// UOSL (native)
trigger message("unlocked")
{
  int Q5DQ;
  if(!hasObjVar(this, "unlocked"))
  {
    setObjVar(this, "unlocked", Q5DQ);
    callback(this, 0x78, 0x01);
  }
  return(0x00);
}

trigger use
{
  if(!hasObjVar(this, "unlocked"))
  {
    bark(this, "This door appears to be locked.");
    return(0x00);
  }
  return(0x01);
}

trigger callback(0x01)
{
  if(hasObjVar(this, "unlocked"))
  {
    removeObjVar(this, "unlocked");
  }
  return(0x00);
}