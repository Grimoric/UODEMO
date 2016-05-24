// UOSL (native)
inherits shipstuff;

trigger targetloc
{
  if(!isInMap(place))
  {
    return(0x00);
  }
  int Q5SR;
  if(getDistanceInTiles(place, getLocation(user)) > 0x0F)
  {
    bark(user, "That location is too far away.");
    return(0x01);
  }
  if(!hasObjVar(this, "myshiptype"))
  {
    Q5SR = 0x00;
  }
  else
  {
    Q5SR = getObjVar(this, "myshiptype");
  }
  obj Q5AO = Q5SD(Q5SR, place);
  if(Q5AO != NULL())
  {
    deleteObject(this);
    return(0x01);
  }
  else
  {
    bark(user, "A ship can not be created here.");
  }
  return(0x01);
}

trigger use
{
  targetloc(user, this);
  return(0x01);
}

trigger creation
{
  int default = 0x00;
  if(!hasObjVar(this, "myshiptype"))
  {
    setObjVar(this, "myshiptype", default);
  }
  return(0x01);
}