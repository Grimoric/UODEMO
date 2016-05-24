// UOSL (enhanced)
inherits sndfx;

trigger use(obj user)
{
  if(hasObjVar(this, "brazierTrapInUse"))
  {
    return(0x00);
  }
  loc Q61U = getLocation(this);
  setObjVar(this, "brazierTrapInUse", 0x00);
  loc Q466 = getX(getLocation(this)), getY(getLocation(this)), (getZ(getLocation(this)) + 0x05);
  doLocAnimation(Q466, 0x3709, 0x0A, 0x1E, 0x00, 0x00);
  sfx(Q61U, 0x54, 0x05);
  callback(this, 0x04, 0x41);
  return(0x00);
}

trigger callback<0x41>()
{
  removeObjVar(this, "brazierTrapInUse");
  return(0x00);
}