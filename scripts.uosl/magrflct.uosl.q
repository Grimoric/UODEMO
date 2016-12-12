// UOSL (native)
inherits magrflctbase;

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
  obj usedon = user;
  if(usedon == NULL())
  {
    return(0x00);
  }
  if(Q5UM(user, usedon, 0x0C))
  {
    if(!Q5YC(user, this))
    {
      return(0x00);
    }
    if(Q4LT(user, getLocation(usedon), this))
    {
      Q4KN(user, usedon);
    }
    else
    {
      Q4RD(user);
    }
  }
  return(0x00);
}

trigger creation
{
  return(0x00);
}

trigger callback(0x49)
{
  obj user = getObjVar(this, "user");
  obj target = getObjVar(this, "target");
  Q4KN(user, target);
  return(0x00);
}