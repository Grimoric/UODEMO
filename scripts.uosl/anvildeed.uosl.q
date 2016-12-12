// UOSL (native)
inherits globals;

trigger use
{
  systemMessage(user, "Choose a location to create your anvil.");
  systemMessage(user, "You will not be able to put it in your backpack afterwards.");
  targetLoc(user, this);
  return(0x01);
}

trigger targetobj
{
  if(usedon == NULL())
  {
    return(0x00);
  }
  systemMessage(user, "Targetobj called");
  setObjVar(this, "ObjSelected", 0x01);
  loc Q5YL = getLocation(usedon);
  int Q46E = getTileHeight(0x0FB0);
  setZ(Q5YL, getZ(Q5YL) + getHeight(usedon));
  int Q4OF = canExistAt(Q5YL, Q46E, 0x01);
  obj Q4EW;
  if(Q4OF == 0x07)
  {
    Q4EW = requestCreateObjectAt(0x0FB0, Q5YL);
    if(Q4EW != NULL())
    {
      deleteObject(this);
    }
    else
    {
      systemMessage(user, "Can't create an anvil there.");
      return(0x00);
    }
  }
  else
  {
    systemMessage(user, "Can't create an anvil there.");
    return(0x00);
  }
  return(0x01);
}

trigger targetloc
{
  if(!isInMap(place))
  {
    return(0x00);
  }
  systemMessage(user, "Targetloc called");
  if(!(hasObjVar(this, "ObjSelected")))
  {
    int Q4VQ = getTileHeight(0x0FB0);
    int Q4OF = canExistAt(place, Q4VQ, 0x01);
    obj Q4EW;
    if(Q4OF == 0x07)
    {
      Q4EW = requestCreateObjectAt(0x0FB0, place);
      if(Q4EW != NULL())
      {
        deleteObject(this);
      }
      else
      {
        systemMessage(user, "Can't create an anvil there.");
        return(0x00);
      }
    }
    else
    {
      systemMessage(user, "Can't create an anvil there.");
      return(0x00);
    }
  }
  removeObjVar(this, "ObjSelected");
  return(0x01);
}