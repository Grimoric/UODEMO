// UOSL (native)
inherits spelskil;

member loc Q5G6;
member obj caster;

function int Q43T(obj user, obj usedon)
{
  if(usedon == NULL())
  {
    return(0x00);
  }
  if((containedBy(usedon) == NULL()) && (canSeeObj(user, usedon) != 0x01))
  {
    bark(user, "I cannot see that object.");
    return(0x00);
  }
  if(isMobile(usedon))
  {
    bark(user, "I cannot recall from that object.");
    return(0x00);
  }
  if(!hasObjVar(usedon, "markLoc"))
  {
    bark(user, "I cannot recall from that object.");
    return(0x00);
  }
  return(0x01);
}

function int Q4LY(obj user, obj usedon)
{
  int Q5NC = 0x00;
  if(Q43T(user, usedon))
  {
    loc Q55E = getObjVar(usedon, "markLoc");
    Q5G6 = getLocation(user);
    caster = user;
    sfx(Q55E, 0x01FC, 0x00);
    int Q4OU = 0x00;
    if(getEncumbrance(caster) > 0x64)
    {
      systemMessage(caster, "Thou art too encumbered to move.");
      Q4OU = 0x01;
    }
    if(!Q4OU && (!Q50M(Q5G6) || !Q50L(Q55E)))
    {
      systemMessage(caster, "You can not teleport into that area.");
      Q4OU = 0x01;
    }
    if(!Q4OU)
    {
      Q4MN(user, Q55E);
      Q5NC = 0x01;
    }
  }
  Q5UQ(this);
  return(Q5NC);
}