// UOSL (enhanced)
inherits globals;

trigger creation()
{
  shortcallback(this, 0x01, 0x2F);
  return(0x00);
}

trigger callback<0x2F>()
{
  int Q54U;
  int Q4Q1 = getResource(Q54U, this, "magic", 0x03, 0x02);
  int charges = Q54U / 0x0A;
  setObjVar(this, "charges", charges);
  return(0x00);
}

trigger use(obj user)
{
  int charges = getObjVar(this, "charges");
  if(charges <= 0x00)
  {
    systemMessage(user, "This magic item is out of charges.");
    return(0x00);
  }
  int Q5N9 = random(0x01, 0x32);
  int Q4G5 = getCurFatigue(user);
  int Q561 = getMaxFatigue(user);
  if(Q561 < (Q5N9 + Q4G5))
  {
    setCurFatigue(user, Q561);
  }
  else
  {
    setCurFatigue(user, Q5N9 + Q4G5);
  }
  charges = charges - 0x01;
  setObjVar(this, "charges", charges);
  returnResourcesToBank(this, 0x0A, "magic");
  if(charges <= 0x00)
  {
    systemMessage(user, "This magic item is out of charges.");
  }
  return(0x00);
}