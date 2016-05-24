// UOSL (enhanced)
inherits spelskil;

trigger creation()
{
  shortcallback(this, 0x01, 0x2F);
  return(0x01);
}

trigger callback<0x2F>()
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

trigger equip(obj equippedon)
{
  if(equippedon == NULL())
  {
    return(0x01);
  }
  if(Q53Z())
  {
    attachScript(equippedon, "reflctor");
  }
  else
  {
    detachScript(this, "wearrflct");
  }
  return(0x01);
}

trigger unequip(obj unequippedfrom)
{
  detachScript(unequippedfrom, "reflctor");
  return(0x01);
}

trigger time<"min:**">()
{
  if(isEquipped(this))
  {
    obj Q4E2 = containedBy(this);
    if(Q4E2 == NULL())
    {
      return(0x01);
    }
    if(!Q53Z())
    {
      detachScript(Q4E2, "reflctor");
      detachScript(this, "wearrflct");
    }
    else
    {
      attachScript(Q4E2, "reflctor");
    }
  }
  return(0x01);
}