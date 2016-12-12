// UOSL (native)
inherits globals;

trigger use
{
  int Q4FS = getX(getLocation(this));
  int Q4FT = getY(getLocation(this));
  int Q4FU = getZ(getLocation(this));
  int Q5CG = Q4FU + 0x01;
  loc Q5C0 = Q4FS, Q4FT, Q5CG;
  loc trapLocation = 0x14CB, 0x023C, 0x00;
  list Q5DQ;
  if(!hasObjVar(this, "working"))
  {
    callback(this, 0x05, 0x24);
    int Q64U = teleport(this, Q5C0);
    messageToRange(trapLocation, 0x0A, "disarm", Q5DQ);
    setObjVar(this, "working", 0x01);
  }
  return(0x01);
}

trigger callback(0x24)
{
  int Q4FS = getX(getLocation(this));
  int Q4FT = getY(getLocation(this));
  int Q4FU = getZ(getLocation(this));
  int Q5CG = Q4FU - 0x01;
  loc Q5C0 = Q4FS, Q4FT, Q5CG;
  if(hasObjVar(this, "working"))
  {
    removeObjVar(this, "working");
  }
  int Q64U = teleport(this, Q5C0);
  return(0x01);
}