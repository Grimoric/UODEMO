// UOSL (enhanced)
inherits itemmanip;

trigger enterrange<0x00>(obj target)
{
  int Q62G = getZ(getLocation(this));
  int Q5YP = getZ(getLocation(target));
  int Q4HE = Q62G - Q5YP;
  if((Q4HE > 0x10) || (Q4HE < (0x00 - 0x10)))
  {
    return(0x01);
  }
  if(hasObjVar(this, "dest"))
  {
    loc destination = getObjVar(this, "dest");
  }
  else
  {
    bark(this, "No dest Object variable found.");
    return(0x01);
  }
  if(isPlayer(target))
  {
    if(hasObjVar(this, "accessList"))
    {
      if(!isInObjVarListSet(this, "accessList", target))
      {
        if(!isEditing(target))
        {
          return(0x01);
        }
      }
    }
    Q5Z2(target, destination);
    setLastValidTerrainLoc(target, destination);
    int r = teleport(target, destination);
    return(!r);
  }
  return(0x01);
}