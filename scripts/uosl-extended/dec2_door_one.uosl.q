// UOSL (enhanced)
inherits globals;

trigger message<"unlocked">(obj sender, list args)
{
  int Q5DQ;
  if(!hasObjVar(this, "unlocked"))
  {
    setObjVar(this, "unlocked", Q5DQ);
    callback(this, 0x78, 0x25);
  }
  return(0x00);
}

trigger use(obj user)
{
  if(!hasObjVar(this, "unlocked"))
  {
    bark(this, "This door appears to be locked.");
    return(0x00);
  }
  return(0x01);
}

trigger callback<0x25>()
{
  if(hasObjVar(this, "unlocked"))
  {
    removeObjVar(this, "unlocked");
  }
  return(0x00);
}