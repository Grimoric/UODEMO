// UOSL (native)
inherits globals;

member int lockLevel;

trigger creation
{
  if(!hasObjVar(this, "isLocked"))
  {
    attachScript(this, "locked");
    lockLevel = random(0x97, 0xAF);
    setObjVar(this, "isLocked", lockLevel);
    setObjVar(this, "lockLevel", lockLevel);
  }
  return(0x00);
}

trigger callback(0x25)
{
  if(!hasObjVar(this, "isLocked"))
  {
    setObjVar(this, "isLocked", lockLevel);
  }
  return(0x00);
}

trigger use
{
  if(!hasObjVar(this, "isLocked"))
  {
    callback(this, 0x3C, 0x25);
  }
  return(0x01);
}