// UOSL (native)
inherits scrollbase;

trigger objectloaded
{
  Q41U(this);
  return(0x01);
}

trigger creation
{
  attachScript(this, "flamstrk");
  setObjVar(this, "isScroll", 0x00);
  return(0x00);
}

trigger callback(0x48)
{
  Q5QJ(this);
  return(0x00);
}