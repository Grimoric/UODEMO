// UOSL (enhanced)
inherits itemmanip;

trigger use(obj user)
{
  if(isAtHome(this))
  {
    systemMessage(user, "That flour belongs to someone else.");
    return(0x00);
  }
  if(hasObjVar(this, "inUse"))
  {
    systemMessage(user, "Someone is using that flour.");
    return(0x00);
  }
  else
  {
    setObjVar(this, "inUse", 0x01);
    callback(this, 0x1E, 0x1B);
  }
  barkTo(this, user, "Mix the flour with water to make dough");
  targetObj(user, this);
  return(0x00);
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
  int Q4Q1;
  int Q685;
  int Q66P = getObjType(usedon);
  loc location = getLocation(usedon);
  obj Q47F = getBackpack(user);
  obj Q4N3;
  if(hasObjVar(usedon, "drinkType"))
  {
    string drinkType;
    drinkType = getObjVar(usedon, "drinkType");
    if(drinkType == "water")
    {
      returnResourcesToBank(usedon, 0x01, "water");
      returnResourcesToBank(this, 0x01, "flour");
      Q4N3 = createNoResObjectIn(0x103D, Q47F);
      systemMessage(user, "You make some dough and put it in your backpack");
    }
    Q4Q1 = getResource(Q685, usedon, "water", 0x03, 0x02);
    if(Q685 < 0x01)
    {
      if(hasObjVar(usedon, "emptyVersion"))
      {
        removeObjVar(usedon, "drinkType");
        int emptyVersion = getObjVar(usedon, "emptyVersion");
        setType(usedon, emptyVersion);
      }
      else
      {
        deleteObject(usedon);
      }
    }
  }
  else
  {
    switch(Q66P)
    {
    case 0x103D:
      string name;
      name = getObjVar(usedon, "NAME");
      if(name == "sweet dough")
      {
        setType(usedon, 0x103F);
        attachScript(usedon, "4159");
        removeObjVar(usedon, "NAME");
        setObjVar(usedon, "NAME", "cake mix");
        detachScript(usedon, "4157");
      }
      break;
    case 0x0FFA:
    case 0x154D:
    case 0x0E7B:
      Q4Q1 = getResource(Q685, usedon, "water", 0x03, 0x02);
      if(Q685 > 0x00)
      {
        returnResourcesToBank(usedon, 0x01, "water");
      }
      Q4Q1 = getResource(Q685, usedon, "water", 0x03, 0x02);
      if(Q685 < 0x01)
      {
        if(Q66P == 0x0FFA)
        {
          Q5XR(usedon, 0x14E0);
        }
        if(Q66P == 0x154D)
        {
          Q5XR(usedon, 0x0E77);
        }
        if(Q66P == 0x0E7B)
        {
          Q5XR(usedon, 0x0E83);
        }
      }
      returnResourcesToBank(this, 0x01, "flour");
      Q4N3 = createNoResObjectIn(0x103D, Q47F);
      systemMessage(user, "You make some dough and put it in your backpack");
      break;
    case 0x15F8:
      setType(usedon, 0x0A1E);
      attachScript(usedon, "2590");
      transferResources(usedon, this, 0x01, "flour");
      break;
    default:
      systemMessage(user, "Can't use flour on that.");
      break;
    }
  }
  int Q4PX;
  Q4Q1 = getResource(Q4PX, this, "flour", 0x03, 0x02);
  if(hasObjVar(this, "inUse"))
  {
    removeObjVar(this, "inUse");
  }
  if(Q4PX < 0x01)
  {
    int Q62A = getObjType(this);
    if(Q62A == 0x0A1E)
    {
      setType(this, 0x15F8);
      detachScript(this, "2590");
      return(0x01);
    }
    else
    {
      deleteObject(this);
    }
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