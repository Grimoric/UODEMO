// UOSL (native)
inherits teleportbase;

trigger use
{
  Q4M9(this, user);
  return(0x00);
}

trigger message("castspell")
{
  obj user = Q4BB(this, args);
  if(!isValid(user))
  {
    return(0x00);
  }
  Q5RD(user, this);
  targetLoc(user, this);
  return(0x00);
}

trigger targetloc
{
  if(!Q4C8(user, this))
  {
    return(0x01);
  }
  place = Q4TC(user, place);
  if(getZ(place) == (0x00 - 0x80))
  {
    return(0x00);
  }
  if(!Q5YC(user, this))
  {
    return(0x00);
  }
  if(Q4LT(user, place, this))
  {
    Q4MM(user, place);
  }
  else
  {
    Q4RD(user);
  }
  return(0x00);
}

trigger creation
{
  return(0x00);
}