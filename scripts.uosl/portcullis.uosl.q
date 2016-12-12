// UOSL (native)
inherits sndfx;

trigger creation
{
  setObjVar(this, "isDown", 0x01);
  loc Q4YC = getLocation(this);
  member int Q4YE = getZ(Q4YC);
  member int Q4W1 = Q4YE + 0x14;
  return(0x01);
}

trigger message("portcullisdown")
{
  removeObjVar(this, "isUp");
  setObjVar(this, "isDown", 0x01);
  setObjVar(this, "isInMotion", 0x01);
  callback(this, 0x01, 0x45);
  return(0x01);
}

trigger message("portcullisup")
{
  removeObjVar(this, "isDown");
  setObjVar(this, "isUp", 0x01);
  setObjVar(this, "isInMotion", 0x01);
  callback(this, 0x01, 0x45);
  return(0x01);
}

trigger use
{
  if(hasObjVar(this, "isLocked"))
  {
    bark(this, "It is locked.");
    return(0x00);
  }
  list Q5DQ;
  if(hasObjVar(this, "isInMotion"))
  {
    barkTo(user, user, "The portcullis is in motion. You can't stop it now.");
    return(0x01);
  }
  if(hasObjVar(this, "isDown"))
  {
    removeObjVar(this, "isDown");
    setObjVar(this, "isUp", 0x01);
    setObjVar(this, "isInMotion", 0x01);
    messageToRange(getLocation(this), 0x05, "portcullisup", Q5DQ);
    callback(this, 0x01, 0x45);
    return(0x01);
  }
  if(hasObjVar(this, "isUp"))
  {
    setObjVar(this, "isDown", 0x01);
    messageToRange(getLocation(this), 0x05, "portcullisdown", Q5DQ);
    setObjVar(this, "isInMotion", 0x01);
    removeObjVar(this, "isUp");
    callback(this, 0x01, 0x45);
    return(0x01);
  }
  return(0x01);
}

trigger callback(0x45)
{
  if(!hasObjVar(this, "isInMotion"))
  {
    return(0x00);
  }
  int Q4ID;
  int Q4Q1;
  loc Q4VS = getLocation(this);
  int Q6A0 = getZ(Q4VS);
  if(hasObjVar(this, "isUp"))
  {
    if(Q6A0 == Q4W1)
    {
      removeObjVar(this, "isInMotion");
      sfx(getLocation(this), 0xEE, 0x00);
      return(0x00);
    }
    setZ(Q4VS, Q6A0 + 0x01);
    sfx(getLocation(this), 0xEF, 0x00);
    Q4Q1 = teleport(this, Q4VS);
    shortCallback(this, 0x01, 0x45);
    return(0x00);
  }
  if(hasObjVar(this, "isDown"))
  {
    if(Q6A0 == Q4YE)
    {
      sfx(getLocation(this), 0xEE, 0x00);
      removeObjVar(this, "isInMotion");
      return(0x00);
    }
    setZ(Q4VS, Q6A0 - 0x01);
    sfx(getLocation(this), 0xF0, 0x00);
    Q4Q1 = teleport(this, Q4VS);
    shortCallback(this, 0x01, 0x45);
    return(0x00);
  }
  return(0x01);
}