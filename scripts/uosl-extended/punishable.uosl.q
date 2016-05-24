// UOSL (enhanced)
inherits globals;

trigger creation()
{
  systemMessage(this, "Guards can now be called on you!");
  return(0x00);
}

trigger message<"punishableReset">(obj sender, list args)
{
  shortcallback(this, 0x3C, 0x92);
  return(0x00);
}

function void cleanup()
{
  systemMessage(this, "Guards can no longer be called on you.");
  removeObjVar(this, "crimeWitnessList");
  removeObjVar(this, "crimeSeverity");
  detachScript(this, "punishable");
  return;
}

trigger callback<0x92>()
{
  cleanup();
  return(0x00);
}

trigger speech<"*guards*">(obj speaker, string arg)
{
  if(!inJusticeRegion(getLocation(speaker)))
  {
    return(0x01);
  }
  int Q5RN = 0x03E8;
  if(hasObjVar(this, "crimeSeverity"))
  {
    Q5RN = getObjVar(this, "crimeSeverity");
  }
  if(hasObjVar(this, "crimeWitnessList"))
  {
    if(!isInObjVarListSet(this, "crimeWitnessList", NULL()))
    {
      if(!isInObjVarListSet(this, "crimeWitnessList", speaker))
      {
        return(0x01);
      }
    }
  }
  callGuards(this, speaker, Q5RN);
  return(0x01);
}

trigger death(obj attacker, obj corpse)
{
  setDefaultReturn(0x01);
  cleanup();
  return(0x01);
}