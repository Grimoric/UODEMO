// UOSL (enhanced)
inherits sndfx;

trigger use(obj user)
{
  systemMessage(user, "What do you want to pick?");
  targetObj(user, this);
  return(0x00);
}

trigger targetobj(obj user, obj usedon)
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
  int Q5Z4 = skillTest(user, 0x18);
  int Q4AY = getSkillLevelRealStat(user, 0x18) / 0x04;
  int Q541 = Q53M - 0x0A;
  if(Q541 < 0x00)
  {
    Q541 = 0x01;
  }
  int Q4QI = random(Q541, Q53M);
  if(Q4QI > Q4AY)
  {
    if(Q4QI >= (Q53M - 0x02))
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