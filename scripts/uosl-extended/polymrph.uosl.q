// UOSL (enhanced)
inherits polymrphbase;

member int Q59T;

trigger use(obj user)
{
  if(!hasObjVar(user, "oldBodyType"))
  {
    Q4MV(user);
  }
  else
  {
    Q4RD(user);
  }
  return(0x00);
}

function void Q43S(obj user, int newType)
{
  Q59T = newType;
  Q4M9(this, user);
  return;
}

trigger message<"castspell">(obj sender, list args)
{
  obj user = Q4BB(this, args);
  if(!isValid(user))
  {
    return(0x00);
  }
  if(hasObjVar(user, "oldBodyType"))
  {
    Q4RD(user);
    return(0x00);
  }
  if(!Q5YC(user, this))
  {
    return(0x00);
  }
  if((!(hasObjVar(user, "oldBodyType"))) && (Q4LT(user, getLocation(user), this)))
  {
    Q43R(user, Q59T);
  }
  else
  {
    Q4RD(user);
  }
  return(0x00);
}

trigger creation()
{
  return(0x00);
}