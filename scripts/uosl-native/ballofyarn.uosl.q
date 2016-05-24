// UOSL (native)
inherits globals;

member obj Q66W;

trigger use
{
  if(isAtHome(this))
  {
    systemMessage(user, "You can't use that, it belongs to someone else.");
    return(0x00);
  }
  if(hasObjVar(this, "inUse"))
  {
    barkTo(this, user, "That is being used by someone else");
    return(0x01);
  }
  else
  {
    setObjVar(this, "inUse", 0x01);
    attachscript(this, "removeinuse");
    callback(this, 0x1E, 0x1B);
  }
  Q66W = user;
  systemMessage(user, "Select a loom to use that on.");
  targetObj(user, this);
  if(hasObjVar(this, "inUse"))
  {
    removeObjVar(this, "inUse");
  }
  return(0x01);
}

trigger targetobj
{
  if(usedon == NULL())
  {
    if(hasObjVar(this, "inUse"))
    {
      removeObjVar(this, "inUse");
    }
    return(0x00);
  }
  int Q66P = getObjType(usedon);
  loc location = getLocation(user);
  obj Q48P;
  loc Q66N = getLocation(usedon);
  obj Q550;
  loc Q5FR;
  int Q5UA = getHue(this);
  int Q4Q1;
  switch(Q66P)
  {
  case 0x105F
    Q550 = usedon;
    break;
  case 0x1060
    Q5FR = Q66N;
    changeLoc(Q5FR, 0x00, 0x01, 0x00);
    Q550 = getFirstObjectOfType(Q5FR, 0x105F);
    break;
  case 0x1061
    Q5FR = Q66N;
    changeLoc(Q5FR, 0x01, 0x00, 0x00);
    Q550 = getFirstObjectOfType(Q5FR, 0x1062);
    break;
  case 0x1062
    Q550 = usedon;
    break;
  case 0x1063
    Q550 = usedon;
    break;
  case 0x1064
    Q5FR = Q66N;
    changeLoc(Q5FR, 0x00, 0x01, 0x00);
    Q550 = getFirstObjectOfType(Q5FR, 0x1063);
    break;
  case 0x1065
    Q5FR = Q66N;
    changeLoc(Q5FR, 0x01, 0x00, 0x00);
    Q550 = getFirstObjectOfType(Q5FR, 0x1066);
    break;
  case 0x1066
    Q550 = usedon;
    break;
  default
    systemMessage(user, "Try using that on a loom.");
    if(hasObjVar(this, "inUse"))
    {
      removeObjVar(this, "inUse");
    }
    return(0x00);
    break;
  }
  transferResources(Q550, this, 0x0A, "cloth");
  if(hasObjVar(this, "inUse"))
  {
    removeObjVar(this, "inUse");
  }
  int Q53W;
  Q4Q1 = getResource(Q53W, Q550, "cloth", 0x03, 0x02);
  if(Q53W > 0x31)
  {
    int Q4QY = 0x0F95;
    obj Q47G = getBackpack(user);
    Q48P = createNoResObjectIn(Q4QY, Q47G);
    systemMessage(user, "You create some cloth and put it in your backpack.");
    transferAllResources(Q48P, Q550);
    setHue(Q48P, Q5UA);
  }
  else
  {
    string Q47R;
    if(Q53W > 0x00)
    {
      Q47R = "The bolt of cloth has just been started.";
    }
    if(Q53W > 0x0A)
    {
      Q47R = "The bolt of cloth needs quite a bit more.";
    }
    if(Q53W > 0x14)
    {
      Q47R = "The bolt of cloth needs a little more.";
    }
    if(Q53W > 0x1E)
    {
      Q47R = "The bolt of cloth is almost finished.";
    }
    barkTo(Q550, Q66W, Q47R);
  }
  int Q5KY = getQuantity(this);
  int Q55P;
  Q4Q1 = getResource(Q55P, this, "cloth", 0x03, 0x02);
  if((Q5KY == 0x01) && (Q55P < 0x01))
  {
    deleteObject(this);
  }
  return(0x00);
}

trigger callback(0x2F)
{
  if(hasObjVar(this, "inUse"))
  {
    removeObjVar(this, "inUse");
  }
  return(0x00);
}