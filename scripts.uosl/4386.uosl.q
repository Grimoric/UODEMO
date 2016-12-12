// UOSL (native)
trigger creation
{
  attachScript(this, "traprange");
  setObjVar(this, "TrapMessageRange", 0x0A);
  return(0x01);
}