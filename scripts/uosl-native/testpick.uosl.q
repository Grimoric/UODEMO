// UOSL (native)
inherits sndfx;

trigger use
{
  systemMessage(user, "What do you want to pick?");
  targetObj(user, this);
  return(0x00);
}

trigger targetobj
{
  if(!hasObjVar(usedon, "isLocked"))
  {
    systemMessage(user, "This does not appear to be locked.");
    return(0x00);
  }
  int Q53M = getObjVar(usedon, "isLocked");
  loc Q4VS = getLocation(user);
  loc there = getLocation(usedon);
  if(getDistanceInTiles(Q4VS, there) > 0x03)
  {
    bark(user, "I am too far away to do that.");
    return(0x00);
  }
  if(Q53M == 0x0100)
  {
    systemMessage(user, "You don't see how that lock can be manipulated.");
    return(0x00);
  }
  if(Q53M == 0x00)
  {
    systemMessage(user, "This lock cannot be picked by normal means...");
    return(0x00);
  }
  int Q52T = skillTestReal(user, 0x18);
  string Q48R = Q52T;
  bark(this, Q48R);
  if(Q52T < 0x00)
  {
    if(random(0x00, 0x0A) > 0x07)
    {
      barkTo(usedon, user, "You broke the lockpick.");
      sfx(there, 0x013F, 0x00);
      deleteObject(this);
    }
    barkTo(usedon, user, "You are unable to pick the lock.");
    return(0x00);
  }
  sfx(there, 0xEA, 0x00);
  removeObjVar(usedon, "isLocked");
  barkTo(usedon, user, "The lock quickly yields to your skill.");
  callback(usedon, 0x0258, 0x25);
  return(0x00);
}