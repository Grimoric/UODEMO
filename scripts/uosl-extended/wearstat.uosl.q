// UOSL (enhanced)
inherits spelskil;

member int Q5X6;
member int Q4HZ;
member int Q4YI;

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

function void Q4HX(obj it)
{
  debugMessage("Error!  womfunc meant as pure virtual called!");
  return;
}

function int Q53Z()
{
  int charges = 0x00;
  if(hasObjVar(this, "charges"))
  {
    charges = getObjVar(this, "charges");
  }
  if(charges <= 0x00)
  {
    removeObjVar(this, "charges");
  }
  else
  {
    setObjVar(this, "charges", charges - 0x01);
    returnResourcesToBank(this, 0x03, "magic");
  }
  return(charges);
}

function void Q4MB(obj it, int add)
{
  int Q5O7 = Q5X6;
  int da = Q4HZ;
  int Q4XL = Q4YI;
  if(!add)
  {
    Q5O7 = 0x00 - Q5X6;
    da = 0x00 - Q4HZ;
    Q4XL = 0x00 - Q4YI;
  }
  Q43H(it, 0x00, Q5O7);
  Q43H(it, 0x01, da);
  Q43H(it, 0x02, Q4XL);
  return;
}

trigger equip(obj equippedon)
{
  if(Q53Z())
  {
    Q4MB(equippedon, 0x01);
  }
  else
  {
    Q4HX(this);
  }
  return(0x01);
}

trigger unequip(obj unequippedfrom)
{
  Q4MB(unequippedfrom, 0x00);
  return(0x01);
}

trigger time<"min:*0">()
{
  if(isEquipped(this))
  {
    obj it = containedBy(this);
    if(!Q53Z())
    {
      Q4MB(it, 0x00);
      Q4HX(this);
    }
  }
  return(0x01);
}