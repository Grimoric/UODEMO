// UOSL (native)
inherits spelskil;

trigger creation
{
  return(0x00);
}

trigger use
{
  setObjVar(this, "thrower", user);
  if(!hasObjVar(this, "countDown"))
  {
    setObjVar(this, "countDown", 0x04);
    callback(this, 0x01, 0x1B);
    systemMessage(user, "You should throw it now!");
  }
  targetLoc(user, this);
  return(0x00);
}

trigger targetobj
{
  if(!Q5UM(user, usedon, 0x0C))
  {
    return(0x00);
  }
  setObjVar(this, "thrower", user);
  setInvisible(user, 0x00);
  if(isMobile(usedon))
  {
    int Q5Z4 = putObjContainer(this, user);
    doMissile_Mob2Mob(user, usedon, 0x0F0D, 0x07, 0x00, 0x00);
    setObjVar(this, "thrownAt", usedon);
    callback(this, 0x01, 0x19);
    return(0x00);
  }
  return(0x01);
}

trigger targetloc
{
  setObjVar(this, "thrower", user);
  if(!canSeeLoc(user, place))
  {
    systemMessage(user, "Target can not be seen.");
    return(0x00);
  }
  setInvisible(user, 0x00);
  int Q5Z4 = putObjContainer(this, user);
  doMissile_Mob2Loc(user, place, 0x0F0D, 0x07, 0x00, 0x00);
  setObjVar(this, "thrownTo", place);
  callback(this, 0x01, 0x19);
  return(0x00);
}

trigger callback(0x19)
{
  int Q4Q1;
  if(hasObjVar(this, "thrownTo"))
  {
    Q4Q1 = teleport(this, getObjVar(this, "thrownTo"));
  }
  else
  {
    Q4Q1 = teleport(this, getLocation(getObjVar(this, "thrownAt")));
  }
  return(0x00);
}

trigger callback(0x1B)
{
  obj thrower = getObjVar(this, "thrower");
  if(thrower != NULL())
  {
    setInvisible(thrower, 0x00);
  }
  int countDown = getObjVar(this, "countDown");
  countDown --;
  setObjVar(this, "countDown", countDown);
  if(countDown > 0x00)
  {
    bark(this, "" + countDown);
    callback(this, 0x01, 0x1B);
    return(0x00);
  }
  if(countDown == 0x00)
  {
    doLocAnimation(getLocation(this), 0x36B0, 0x0A, 0x09, 0x00, 0x00);
    shortCallback(this, 0x01, 0x1B);
    return(0x00);
  }
  sfx(getLocation(this), 0x0207, 0x00);
  list Q5BC;
  getMobsInRange(Q5BC, getLocation(this), 0x02);
  int Q5A6 = getZ(getLocation(this));
  int power = 0x19;
  if(hasObjVar(this, "power"))
  {
    power = getObjVar(this, "power");
  }
  int Q50Y;
  for(int Q623 = 0x00; Q623 < numInList(Q5BC); Q623 ++)
  {
    obj it = Q5BC[Q623];
    Q50Y = getZ(getLocation(it));
    if((Q50Y >= Q5A6) && (Q50Y <= (Q5A6 + 0x05)))
    {
      Q5UK(thrower, it, 0x01, 0x00);
      int damage = random(power / 0x02, power);
      Q423(thrower, it, damage, 0x04, 0x00);
    }
  }
  clearList(Q5BC);
  getObjectsInRangeOfType(Q5BC, getLocation(this), 0x02, 0x0F0D);
  for(int Q61T = 0x00; Q61T < numInList(Q5BC); Q61T ++)
  {
    obj item = Q5BC[Q61T];
    Q50Y = getZ(getLocation(item));
    if((Q50Y >= Q5A6) && (Q50Y <= (Q5A6 + 0x05)))
    {
      setObjVar(item, "thrower", thrower);
      setObjVar(item, "countDown", 0x01);
      int Q4IJ = 0x01 + getDistanceInTiles(getLocation(this), getLocation(item));
      shortCallback(item, Q4IJ, 0x1B);
    }
  }
  deleteObject(this);
  return(0x00);
}