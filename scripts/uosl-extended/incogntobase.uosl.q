// UOSL (enhanced)
inherits spelskil;

function int Q4V7(obj it)
{
  if(isMobile(it))
  {
    int Q65M = getObjType(it);
    if((Q65M == 0x0190) || (Q65M == 0x0191))
    {
      return(0x01);
    }
  }
  return(0x00);
}

function int Q49Z(obj usedon)
{
  if(!Q50G(usedon))
  {
    return(0x00);
  }
  if(!Q4V7(usedon))
  {
    return(0x00);
  }
  if(hasScript(usedon, "remincognito"))
  {
    return(0x00);
  }
  if(hasScript(usedon, "polychec"))
  {
    return(0x00);
  }
  return(0x01);
}

function int Q4KA(obj user, obj usedon)
{
  int Q5NC = 0x00;
  if(Q49Z(usedon))
  {
    Q5NC = 0x01;
    int Q4NC;
    int Q4G8;
    loc Q4VS = getLocation(user);
    loc there = getLocation(usedon);
    doMobAnimation(usedon, 0x373A, 0x0A, 0x0F, 0x00, 0x00);
    sfx(there, 0x01EC, 0x00);
    if(getSkillLevel(user, 0x19) < 0x0A)
    {
      Q4NC = 0x06;
    }
    else
    {
      Q4NC = 0x06 * getSkillLevel(user, 0x19) / 0x05;
    }
    int Q527 = Q41J(user, usedon, 0x00, this);
    obj Q4US = getItemAtSlot(usedon, 0x0B);
    if(Q4US != NULL())
    {
      setObjVar(usedon, "origHairStyle", getObjType(Q4US));
      setObjVar(usedon, "origHairColor", getHue(Q4US));
      deleteObject(Q4US);
    }
    else
    {
      setObjVar(usedon, "origHairStyle", 0x00);
    }
    obj Q4OP = getItemAtSlot(usedon, 0x10);
    if(Q4OP != NULL())
    {
      setObjVar(usedon, "origFacialHairStyle", getObjType(Q4OP));
      setObjVar(usedon, "origFacialHairColor", getHue(Q4OP));
      deleteObject(Q4OP);
    }
    else
    {
      setObjVar(usedon, "origFacialHairStyle", 0x00);
    }
    setObjVar(usedon, "origSkinColor", getHue(usedon));
    setObjVar(usedon, "origName", getRealName(usedon));
    int Q4RA = 0x01;
    if(getObjType(usedon) == 0x0191)
    {
      Q4RA = 0x00;
    }
    setRealNameFromTemplate(usedon, 0x00);
    setPartialHue(usedon, random(0x03EA, 0x0422));
    int Q4UT = random(0x00, 0x09);
    if(Q4RA == 0x00 || (Q4UT != 0x00))
    {
      list Q4UU = 0x2046, 0x203B, 0x203C, 0x203D, 0x2044, 0x2045, 0x2047, 0x2048, 0x2049, 0x204A;
      Q4UT = Q4UU[Q4UT];
    }
    if(Q4UT)
    {
      Q4US = createNoResObjectIn(Q4UT, usedon);
      setHue(Q4US, random(0x044E, 0x047D));
      int Q4EL = equipObj(Q4US, usedon, 0x0B);
    }
    if(Q4RA == 0x01)
    {
      list Q4OR = 0x00, 0x2040, 0x203E, 0x203F, 0x2041, 0x204B, 0x204C, 0x204D;
      Q4UT = Q4OR[random(0x00, 0x07)];
      if(Q4UT)
      {
        Q4OP = createNoResObjectIn(Q4UT, usedon);
        setHue(Q4OP, random(0x044E, 0x047D));
        int Q4EM = equipObj(Q4OP, usedon, 0x10);
      }
    }
    attachScript(usedon, "remincognito");
    callback(usedon, Q4NC, 0x1D);
  }
  Q5UQ(this);
  return(Q5NC);
}