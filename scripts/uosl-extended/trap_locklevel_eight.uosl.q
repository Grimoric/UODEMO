// UOSL (enhanced)
inherits globals;

member int lockLevel;

trigger creation()
{
  if(!hasObjVar(this, "isLocked"))
  {
    attachScript(this, "locked");
    lockLevel = random(0xB0, 0xC8);
    setObjVar(this, "isLocked", lockLevel);
    setObjVar(this, "lockLevel", lockLevel);
  }
  return(0x00);
}

trigger callback<0x25>()
{
  if(!hasObjVar(this, "isLocked"))
  {
    setObjVar(this, "isLocked", lockLevel);
  }
  return(0x00);
}

trigger use(obj user)
{
  if(!hasObjVar(this, "isLocked"))
  {
    callback(this, 0x3C, 0x25);
  }
  return(0x01);
}