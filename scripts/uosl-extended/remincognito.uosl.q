// UOSL (enhanced)
inherits globals;

function void Q448()
{
  if(hasObjVar(this, "origName"))
  {
    string s = getObjVar(this, "origName");
    removeObjVar(this, "origName");
    setRealName(this, s);
  }
  if(hasObjVar(this, "origSkinColor"))
  {
    int Q5TM = getObjVar(this, "origSkinColor");
    removeObjVar(this, "origSkinColor");
    setPartialHue(this, Q5TM);
  }
  if(hasObjVar(this, "origHairStyle"))
  {
    int Q4UT = getObjVar(this, "origHairStyle");
    removeObjVar(this, "origHairStyle");
    int Q4UQ = 0x00;
    if(hasObjVar(this, "origHairColor"))
    {
      Q4UQ = getObjVar(this, "origHairColor");
      removeObjVar(this, "origHairColor");
    }
    obj Q4US = getItemAtSlot(this, 0x0B);
    if(Q4US != NULL())
    {
      deleteObject(Q4US);
    }
    if(Q4UT)
    {
      Q4US = createNoResObjectIn(Q4UT, this);
      setHue(Q4US, Q4UQ);
      int Q4EL = equipObj(Q4US, this, 0x0B);
    }
  }
  if(hasObjVar(this, "origFacialHairStyle"))
  {
    int Q4OQ = getObjVar(this, "origFacialHairStyle");
    removeObjVar(this, "origFacialHairStyle");
    int Q4OO = 0x00;
    if(hasObjVar(this, "origFacialHairColor"))
    {
      Q4OO = getObjVar(this, "origFacialHairColor");
      removeObjVar(this, "origFacialHairColor");
    }
    obj Q4OP = getItemAtSlot(this, 0x10);
    if(Q4OP != NULL())
    {
      deleteObject(Q4OP);
    }
    if(Q4OQ)
    {
      Q4OP = createNoResObjectIn(Q4OQ, this);
      setHue(Q4OP, Q4OO);
      int Q4EM = equipObj(Q4OP, this, 0x10);
    }
  }
  detachScript(this, "remincognito");
  return;
}

trigger callback<0x1D>()
{
  Q448();
  return(0x01);
}

trigger message<"undoincognito">(obj sender, list args)
{
  Q448();
  return(0x01);
}