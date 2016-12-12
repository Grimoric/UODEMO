// UOSL (native)
inherits platemail;

trigger creation
{
  setObjVar(this, "plateMailCost", 0x01);
  return(0x01);
}