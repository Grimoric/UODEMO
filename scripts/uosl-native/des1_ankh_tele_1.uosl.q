// UOSL (native)
inherits globals;

trigger use
{
  loc toLocation = 0x1530, 0x023A, 0x41;
  if(!hasObjVar(this, "working"))
  {
    setObjVar(this, "working", 0x01);
    setType(this, 0x1091);
    callback(this, 0x03, 0x24);
    doLocAnimation(getLocation(user), 0x373A, 0x01, 0x18, 0x00, 0x00);
    doLocAnimation(toLocation, 0x373A, 0x01, 0x18, 0x00, 0x00);
    if(!teleport(user, toLocation))
    {
      return(0x01);
    }
  }
  return(0x00);
}

trigger callback(0x24)
{
  if(hasObjVar(this, "working"))
  {
    removeObjVar(this, "working");
    setType(this, 0x1092);
  }
  return(0x00);
}