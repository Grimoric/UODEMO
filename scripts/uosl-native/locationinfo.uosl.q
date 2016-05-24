// UOSL (native)
trigger use
{
  list Q4QI;
  getObjectsInRange(Q4QI, getLocation(this), 0x01);
  systemMessage(user, "Objects Here:");
  for(int i = (numInList(Q4QI) - 0x01); i >= 0x00; i --)
  {
    obj Q4FK = Q4QI[i];
    int Q47V = getZ(getLocation(Q4FK));
    systemMessage(user, "(" + Q47V + "-" + (Q47V + getHeight(Q4FK)) + ") '" + getName(Q4FK) + "' Type:" + getObjType(Q4FK));
  }
  return(0x01);
}