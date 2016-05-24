// UOSL (native)
inherits clumsy;

trigger creation
{
  setObjVar(this, "magicItemModifier", 0x04);
  shortcallback(this, 0x01, 0x2F);
  return(0x00);
}

trigger callback(0x2F)
{
  int Q54U;
  int Q4Q1 = getResource(Q54U, this, "magic", 0x03, 0x02);
  int charges = Q54U / 0x03;
  setObjVar(this, "charges", charges);
  return(0x00);
}

trigger use
{
  Q4WO(user, this);
  return(0x00);
}

trigger targetobj
{
  int charges = getObjVar(this, "charges");
  if(charges <= 0x00)
  {
    systemMessage(user, "This magic item is out of charges.");
    return(0x00);
  }
  if(!Q49W(this, user, usedon, 0x00))
  {
    return(0x00);
  }
  if(hasScript(usedon, "reflctor"))
  {
    doMobAnimation(usedon, 0x37B9, 0x0A, 0x05, 0x00, 0x00);
    Q4J7(usedon, user, 0x01);
    detachScript(usedon, "reflctor");
  }
  else
  {
    Q4J7(user, usedon, 0x00);
  }
  charges = charges - 0x01;
  setObjVar(this, "charges", charges);
  returnResourcesToBank(this, 0x03, "magic");
  if(charges <= 0x00)
  {
    systemMessage(user, "This magic item is out of charges.");
  }
  return(0x00);
}