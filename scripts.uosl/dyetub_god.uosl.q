// UOSL (native)
inherits sndfx;

trigger use
{
  systemMessage(user, "Select the clothing to dye.");
  targetObj(user, this);
  return(0x00);
}

trigger targetobj
{
  if(usedon == NULL())
  {
    return(0x00);
  }
  int Q66P = getObjType(usedon);
  int Q61R = getHue(this);
  loc Q66R = getLocation(usedon);
  sfx(Q66R, 0x023E, 0x00);
  setHue(usedon, Q61R);
  return(0x00);
}