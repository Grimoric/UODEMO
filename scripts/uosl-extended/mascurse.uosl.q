// UOSL (enhanced)
inherits mascursebase;

trigger use(obj user)
{
  Q4M9(this, user);
  return(0x00);
}

trigger message<"castspell">(obj sender, list args)
{
  obj user = Q4BB(this, args);
  if(!isValid(user))
  {
    return(0x00);
  }
  Q5RD(user, this);
  Q4WN(user, this, 0x0A);
  return(0x00);
}

trigger targetloc(obj user, loc place, int objtype)
{
  if(!Q4C8(user, this))
  {
    return(0x01);
  }
  if(!isInMap(place))
  {
    return(0x00);
  }
  if(canSeeLoc(user, place) == 0x01)
  {
    if(!Q5YC(user, this))
    {
      return(0x00);
    }
    if(Q4LT(user, place, this))
    {
      Q4KU(user, place);
    }
    else
    {
      Q4RD(user);
    }
  }
  else
  {
    systemMessage(user, "Target cannot be seen.");
  }
  return(0x00);
}

trigger creation()
{
  return(0x00);
}

trigger callback<0x49>()
{
  obj user = getObjVar(this, "user");
  obj target = getObjVar(this, "target");
  loc there = getLocation(target);
  Q4KU(user, there);
  return(0x00);
}