// UOSL (enhanced)
inherits manavampbase;

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
  Q4WO(user, this);
  return(0x00);
}

trigger targetobj(obj user, obj usedon)
{
  if(!Q4C8(user, this))
  {
    return(0x01);
  }
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
      if(hasScript(usedon, "reflctor"))
      {
        doMobAnimation(usedon, 0x37B9, 0x0A, 0x05, 0x00, 0x00);
        Q4KS(usedon, user, 0x01);
        detachScript(usedon, "reflctor");
      }
      else
      {
        Q4KS(user, usedon, 0x00);
      }
    }
    else
    {
      Q4RD(user);
    }
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
  if(Q41X(user, target))
  {
    Q4KS(target, user, 0x01);
    Q5MF(target);
  }
  else
  {
    Q4KS(user, target, 0x00);
  }
  return(0x00);
}