// UOSL (native)
inherits globals;

function void cleanup()
{
  removeObjVar(this, "lastCriminal");
  removeObjVar(this, "lastVictim");
  removeObjVar(this, "crimeSeverity");
  removeObjVar(this, "crimeLocation");
  detachScript(this, "witness");
  return();
}

function void Q49H()
{
  loc Q4F5 = getObjVar(this, "crimeLocation");
  obj criminal = getObjVar(this, "lastCriminal");
  if(getDistanceInTiles(getLocation(this), Q4F5) > 0x19)
  {
    if(isValid(criminal))
    {
      if(getDistanceInTiles(getLocation(this), getLocation(criminal)) > 0x19)
      {
        return();
      }
    }
  }
  if(isValid(criminal))
  {
    obj victim = getObjVar(this, "lastVictim");
    int Q5RN = getObjVar(this, "crimeSeverity");
    callGuards(criminal, victim, Q5RN);
  }
  cleanup();
  return();
}

trigger creation
{
  callback(this, 0x1E, 0x58);
  return(0x00);
}

trigger speech("*guard*")
{
  Q49H();
  return(0x00);
}

trigger callback(0x58)
{
  cleanup();
  return(0x01);
}