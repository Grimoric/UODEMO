// UOSL (enhanced)
inherits itemmanip;

trigger use(obj user)
{
  if(!canSeeObj(user, this))
  {
    return(0x00);
  }
  if(isAtHome(this))
  {
    systemMessage(user, "You can't use that, it belongs to someone else.");
    return(0x00);
  }
  if(hasObjVar(this, "inUse"))
  {
    systemMessage(user, "Someone is using that.");
    return(0x00);
  }
  else
  {
    setObjVar(this, "inUse", 0x01);
    callback(this, 0x1E, 0x1B);
  }
  systemMessage(user, "What spinning wheel do you wish to spin this on?");
  targetObj(user, this);
  if(hasObjVar(this, "inUse"))
  {
    removeObjVar(this, "inUse");
  }
  return(0x00);
}

function void Q5V4(obj user, obj Q5V7, string Q5BX, int Q5V6, int Q5UA)
{
  loc Q5V8 = getLocation(Q5V7);
  loc Q5BZ = Q5V8;
  int Q5GS;
  obj Q68I;
  int Q5BP;
  int Q5V9 = getObjType(Q5V7);
  switch(Q5V9)
  {
  case 0x1015:
    Q5GS = 0x1015;
    Q68I = Q5V7;
    setType(Q68I, 0x1016);
    break;
  case 0x1019:
    Q5GS = 0x1019;
    Q68I = Q5V7;
    setType(Q68I, 0x101A);
    break;
  case 0x101C:
    Q5GS = 0x101C;
    Q68I = Q5V7;
    setType(Q68I, 0x101D);
    break;
  }
  setObjVar(Q68I, "SOURCE", this);
  setObjVar(Q68I, "CREATE_THIS", Q5BX);
  setObjVar(Q68I, "HUE", Q5UA);
  setObjVar(Q68I, "USER", user);
  setObjVar(Q68I, "ORIGINAL_TYPE", Q5GS);
  setObjVar(Q68I, "SPINVALUE", Q5V6);
  callback(Q68I, 0x05, 0x20);
  return;
}

trigger targetobj(obj user, obj usedon)
{
  if(usedon == NULL())
  {
    if(hasObjVar(this, "inUse"))
    {
      removeObjVar(this, "inUse");
    }
    return(0x00);
  }
  if(!canSeeObj(user, usedon))
  {
    if(hasObjVar(this, "inUse"))
    {
      removeObjVar(this, "inUse");
    }
    return(0x00);
  }
  int Q66P = getObjType(usedon);
  int Q62A = getObjType(this);
  int Q55M;
  int Q5UA;
  int Q4Q1;
  int Q4DN;
  Q5UA = getHue(this);
  switch(Q66P)
  {
  case 0x1015:
  case 0x1019:
  case 0x101C:
    if(hasObjVar(usedon, "inUse"))
    {
      systemMessage(user, "That spinning wheel is being used.");
      if(hasObjVar(this, "inUse"))
      {
        removeObjVar(this, "inUse");
      }
      return(0x00);
    }
    else
    {
      setObjVar(usedon, "inUse", 0x01);
    }
    int Q5V6;
    string Q5V5;
    switch(Q62A)
    {
    case 0x0DF8:
      Q5V6 = 0x1E;
      Q5V5 = "yarn";
      break;
    case 0x101F:
      Q5V6 = 0x0A;
      Q5V5 = "yarn";
      break;
    case 0x0DF9:
    case 0x1A9C:
    case 0x1A9D:
      Q5V6 = 0x3C;
      Q5V5 = "thread";
      break;
    }
    if(hasObjVar(this, "inUse"))
    {
      removeObjVar(this, "inUse");
    }
    transferResources(usedon, this, Q5V6, "cloth");
    Q5V4(user, usedon, Q5V5, Q5V6, Q5UA);
    break;
  case 0x1016:
  case 0x101A:
  case 0x101D:
    systemMessage(user, "That spinning wheel is being used.");
    if(hasObjVar(this, "inUse"))
    {
      removeObjVar(this, "inUse");
    }
    return(0x00);
    break;
  default:
    systemMessage(user, "Use that on a spinning wheel.");
    if(hasObjVar(this, "inUse"))
    {
      removeObjVar(this, "inUse");
    }
    return(0x00);
    break;
  }
  Q4Q1 = getResource(Q4DN, this, "cloth", 0x03, 0x02);
  if((Q4DN < 0x01) && (getQuantity(this) == 0x01))
  {
    deleteObject(this);
  }
  return(0x00);
}

trigger callback<0x1B>()
{
  if(hasObjVar(this, "inUse"))
  {
    removeObjVar(this, "inUse");
  }
  return(0x01);
}