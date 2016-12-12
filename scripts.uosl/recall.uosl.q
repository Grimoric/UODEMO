// UOSL (native)
inherits recallbase;

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
  targetObj(user, this);
  return(0x00);
}

trigger targetobj
{
  if(!Q4C8(user, this))
  {
    return(0x01);
  }
  if(!Q43T(user, usedon))
  {
    return(0x00);
  }
  Q48E(user);
  if(hasObjVar(usedon, "markLoc"))
  {
    if(!Q5YC(user, this))
    {
      return(0x00);
    }
    if(Q4LT(user, getLocation(usedon), this))
    {
      Q4LY(user, usedon);
    }
    else
    {
      Q4RD(user);
    }
  }
  else
  {
    systemMessage(user, "Target is not marked.");
  }
  return(0x00);
}

trigger creation
{
  return(0x00);
}