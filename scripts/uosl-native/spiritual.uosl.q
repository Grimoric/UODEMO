// UOSL (native)
inherits sndfx;

member obj Q5Z3;

trigger speech("Om Om Om")
{
  list Q5HT;
  setObjVar(speaker, "spokeMantra", 0x01);
  getMobsAt(Q5HT, getLocation(this));
  for(int i = 0x00; i < numInList(Q5HT); i ++)
  {
    if(hasObjVar(Q5HT[i], "spokeMantra"))
    {
      removeObjVar(Q5HT[i], "spokeMantra");
      Q5Z3 = Q5HT[i];
      callback(this, 0x01, 0x2F);
    }
  }
  if(isValid(speaker))
  {
    removeObjVar(speaker, "spokeMantra");
  }
  return(0x00);
}

trigger speech("om om om")
{
  list Q5HT;
  setObjVar(speaker, "spokeMantra", 0x01);
  getMobsAt(Q5HT, getLocation(this));
  for(int i = 0x00; i < numInList(Q5HT); i ++)
  {
    if(hasObjVar(Q5HT[i], "spokeMantra"))
    {
      removeObjVar(Q5HT[i], "spokeMantra");
      Q5Z3 = Q5HT[i];
      callback(this, 0x01, 0x2F);
    }
  }
  if(isValid(speaker))
  {
    removeObjVar(speaker, "spokeMantra");
  }
  return(0x00);
}

trigger speech("OM OM OM")
{
  list Q5HT;
  setObjVar(speaker, "spokeMantra", 0x01);
  getMobsAt(Q5HT, getLocation(this));
  for(int i = 0x00; i < numInList(Q5HT); i ++)
  {
    if(hasObjVar(Q5HT[i], "spokeMantra"))
    {
      removeObjVar(Q5HT[i], "spokeMantra");
      Q5Z3 = Q5HT[i];
      callback(this, 0x01, 0x2F);
    }
  }
  if(isValid(speaker))
  {
    removeObjVar(speaker, "spokeMantra");
  }
  return(0x00);
}

trigger callback(0x2F)
{
  loc destination = getObjVar(this, "dest");
  if(teleport(Q5Z3, destination))
  {
    doLocAnimation(getLocation(this), 0x3728, 0x0A, 0x0A, 0x00, 0x00);
    doLocAnimation(destination, 0x3728, 0x0A, 0x0A, 0x00, 0x00);
    sfx(destination, 0x01FE, 0x00);
  }
  else
  {
    bark(Q5Z3, "The spirits are not intune to your desires as of yet.");
  }
  return(0x00);
}