// UOSL (enhanced)
inherits platemail;

trigger creation()
{
  setObjVar(this, "plateMailCost", 0x03);
  return(0x01);
}