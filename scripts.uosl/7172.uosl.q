// UOSL (native)
inherits femaleplatemail;

trigger creation
{
  setObjVar(this, "plateMailCost", 0x05);
  return(0x01);
}