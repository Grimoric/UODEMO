// UOSL (native)
trigger callback(0x00)
{
  setHue(this, getObjVar(this, "oldhue"));
  removeObjVar(this, "oldhue");
  return(0x01);
}