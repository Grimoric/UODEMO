// UOSL (enhanced)
inherits globals;

trigger creation()
{
  callback(this, 0x1E, 0x83);
  return(0x01);
}

trigger callback<0x83>()
{
  removeObjVar(this, "targetingForObj");
  detachScript(this, "targeting");
  return(0x01);
}