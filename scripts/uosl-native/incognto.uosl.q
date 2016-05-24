// UOSL (native)
inherits incogntobase;

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
  if(Q49V(user, usedon, 0x00))
  {
    if(Q49Z(usedon))
    {
      if(!Q5YC(user, this))
      {
        return(0x00);
      }
      if(Q4LT(user, getLocation(usedon), this))
      {
        Q4KA(user, usedon);
      }
      else
      {
        Q4RD(user);
      }
    }
    else
    {
      systemMessage(user, "Incognito can not be cast on that.");
      return(0x00);
    }
  }
  return(0x00);
}

trigger creation
{
  return(0x00);
}