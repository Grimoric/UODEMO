// UOSL (native)
inherits globals;

trigger creation
{
  setType(this, 0x01);
  return(0x00);
}

trigger enterrange(0x01)
{
  if(!hasObjVar(this, "working"))
  {
    list Q53C = target;
    setObjVar(this, "working", Q53C);
    setType(this, 0x373A);
    callback(this, 0x05, 0x24);
  }
  return(0x01);
}

trigger callback(0x24)
{
  list Q67G;
  getObjListVar(Q67G, this, "working");
  obj Q67D = Q67G[0x00];
  loc Q59R = getLocation(this);
  loc Q648;
  loc Q5YY = 0x161D, 0x74, 0x0F;
  loc Q5YZ = 0x162A, 0x0C, (0x00 - 0x05);
  removeObjVar(this, "working");
  clearList(Q67G);
  getMobsInRange(Q67G, Q59R, 0x01);
  if(!isInList(Q67G, Q67D) || (getZ(getLocation(Q67D)) != getZ(Q59R)))
  {
    setType(this, 0x01);
    return(0x00);
  }
  if(Q59R == Q5YY)
  {
    Q648 = Q5YZ;
  }
  if(Q59R == Q5YZ)
  {
    Q648 = Q5YY;
  }
  if(!teleport(Q67D, Q648))
  {
    return(0x01);
  }
  setType(this, 0x01);
  return(0x00);
}