// UOSL (native)
inherits globals;

trigger creation
{
  systemMessage(this, "Your spirit easily returns to corporeal form.");
  setObjVar(this, "resurrectionCount", 0x01);
  callback(this, 0x0190, 0x56);
  return(0x01);
}

trigger message("resurrected")
{
  int resurrectionCount = 0x00;
  if(hasObjVar(this, "resurrectionCount"))
  {
    resurrectionCount = getObjVar(this, "resurrectionCount");
  }
  else
  {
    debugMessage("resurrectionCount obj var was not on an item that had resurrectionlimiter attached");
    return(0x01);
  }
  switch(resurrectionCount)
  {
  case 0x02
    systemMessage(this, "With some effort your spirit returns to corporeal form.");
    break;
  case 0x03
    systemMessage(this, "Your spirit barely manages to return to corporeal form.");
    break;
  case 0x04
    systemMessage(this, "Your spirit returns to corporeal form, but is too weak to do so a gain for a while.");
    break;
  case 0x05
    systemMessage(this, "Your spirit was too weak to return to corporeal form.");
    resurrectionCount = resurrectionCount + 0x7080 / 0x0190;
    break;
  default
    systemMessage(this, "Your spirit was too weak to return to corporeal form.");
    break;
  }
  if(resurrectionCount < 0x05)
  {
    resurrectionCount ++;
  }
  setObjVar(this, "resurrectionCount", resurrectionCount);
  callback(this, 0x0190, 0x56);
  return(0x01);
}

trigger callback(0x56)
{
  int resurrectionCount;
  if(hasObjVar(this, "resurrectionCount"))
  {
    resurrectionCount = getObjVar(this, "resurrectionCount");
  }
  resurrectionCount --;
  if(resurrectionCount < 0x01)
  {
    removeObjVar(this, "resurrectionCount");
    detachScript(this, "resurrectlimiter");
  }
  else
  {
    setObjVar(this, "resurrectionCount", resurrectionCount);
    callback(this, 0x0190, 0x56);
  }
  return(0x01);
}