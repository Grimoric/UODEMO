// UOSL (native)
inherits spelskil;

member int Q5FY;

trigger creation
{
  shortcallback(this, 0x01, 0x2F);
  return(0x01);
}

trigger callback(0x2F)
{
  int Q54U;
  int Q4Q1 = getResource(Q54U, this, "magic", 0x03, 0x02);
  int charges = Q54U / 0x03;
  setObjVar(this, "charges", charges);
  return(0x01);
}

function int Q53Z()
{
  int charges = getObjVar(this, "charges");
  returnResourcesToBank(this, 0x03, "magic");
  if(charges <= 0x00)
  {
    removeObjVar(this, "charges");
  }
  else
  {
    setObjVar(this, "charges", charges - 0x01);
  }
  return(charges);
}

trigger equip
{
  if(Q53Z())
  {
    Q5FY = getLightVal(equippedon);
    setLight(equippedon, 0x0F, 0x01);
  }
  else
  {
    setLight(equippedon, Q5FY, 0x01);
    detachScript(this, "wearlight");
  }
  return(0x01);
}

trigger unequip
{
  setLight(unequippedfrom, Q5FY, 0x01);
  return(0x01);
}

trigger time("min:*0")
{
  if(isEquipped(this))
  {
    if(!Q53Z())
    {
      setLight(containedBy(this), Q5FY, 0x01);
      detachScript(this, "wearlight");
    }
  }
  return(0x01);
}