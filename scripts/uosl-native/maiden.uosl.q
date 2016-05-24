// UOSL (native)
trigger creation
{
  int Q5DQ;
  setType(this, 0x124B);
  setObjVar(this, "MaidenClosed", Q5DQ);
  return(0x00);
}

trigger use
{
  int Q5DQ;
  loc Q59R = getLocation(this);
  loc Q5H8 = getLocation(user);
  if(getDistanceInTiles(Q59R, Q5H8) > 0x02)
  {
    ebarkTo(user, user, "If you had been closer, you might have stepped in and met a gruesome fate!");
    return(0x00);
  }
  if(hasObjVar(this, "MaidenWorking"))
  {
    return(0x00);
  }
  if(hasObjVar(this, "MaidenClosed"))
  {
    setType(this, 0x1249);
    removeObjVar(this, "MaidenClosed");
    setObjVar(this, "MaidenOpen", Q5DQ);
    callBack(this, 0x0A, 0x01);
    ebarkTo(user, user, "Hmm... you suspect that if you used this again, it might hurt.");
    return(0x00);
  }
  if(hasObjVar(this, "MaidenOpen"))
  {
    setType(this, 0x124B);
    removeObjVar(this, "MaidenOpen");
    setObjVar(this, "MaidenWorking", Q5DQ);
    callBack(this, 0x01, 0x03);
    callBack(this, 0x05, 0x02);
    int Q69K = getX(Q59R) + 0x01;
    int Q69T = getY(Q59R) + 0x01;
    int Q6A2 = getZ(Q59R);
    loc Q63E = Q69K, Q69T, Q6A2;
    if(!teleport(user, Q59R))
    {
    }
    loseHP(user, dice(0x0A, 0x03));
    return(0x01);
  }
  return(0x00);
}

trigger callback(0x01)
{
  if(hasObjVar(this, "MaidenOpen"))
  {
    callback(this, 0x00, 0x02);
  }
  return(0x00);
}

trigger callback(0x02)
{
  int Q5DQ;
  if(hasObjVar(this, "MaidenWorking"))
  {
    removeObjVar(this, "MaidenWorking");
  }
  if(hasObjVar(this, "MaidenOpen"))
  {
    removeObjVar(this, "MaidenOpen")
  }
  if(!hasObjVar(this, "MaidenClosed"))
  {
    setType(this, 0x124B);
    setObjVar(this, "MaidenClosed", Q5DQ);
  }
  return(0x00);
}

trigger callback(0x03)
{
  setType(this, 0x124C);
  callback(this, 0x01, 0x04);
  return(0x00);
}

trigger callback(0x04)
{
  setType(this, 0x124D);
  callback(this, 0x01, 0x05);
  return(0x00);
}

trigger callback(0x05)
{
  setType(this, 0x124C);
  callback(this, 0x03, 0x02);
  return(0x00);
}