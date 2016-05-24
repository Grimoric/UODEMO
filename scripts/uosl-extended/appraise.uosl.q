// UOSL (enhanced)
inherits identify;

trigger message<"canUseSkill">(obj sender, list args)
{
  return(0x00);
}

trigger callback<0x4D>()
{
  detachScript(this, "appraise");
  return(0x00);
}

trigger message<"useSkill">(obj sender, list args)
{
  callback(this, 0x0A, 0x4D);
  targetObj(this, this);
  systemMessage(this, "What do you wish to appraise and identify?");
  return(0x00);
}

trigger oortargetobj(obj user, obj usedon)
{
  string Q496;
  if(usedon == NULL())
  {
    return(0x00);
  }
  if(isMobile(usedon))
  {
    barkTo(this, this, "It appears to be " + getName(usedon) + ".");
    return(0x00);
  }
  if(!isFreelyViewable(usedon, user))
  {
    systemMessage(user, "You can't see that object well enough to identify it.");
    return(0x00);
  }
  int Q5TF = 0x64 - getSkillLevel(user, 0x03);
  Q5TF = 0x64 + (random(0x00 - Q5TF, Q5TF) / 0x02);
  string name;
  if(skillTest(user, 0x03))
  {
    setObjVar(usedon, "appraising", 0x01);
    name = Q4JM(user, usedon);
  }
  if(name == "")
  {
    if(hasObjVar(usedon, "lookAtText"))
    {
      debugMessage("Void name with ObjVar");
      name = getObjVar(usedon, "lookAtText");
    }
    else
    {
      debugMessage("Void name no ObjVar");
      name = Q4RB(usedon);
    }
  }
  Q496 = "It appears to be " + name + ". ";
  if(!skillTest(user, 0x03))
  {
    concat(Q496, "You have no idea how much it might be worth.");
    barkTo(user, user, Q496);
    return(0x00);
  }
  int Q4EF = getValue(usedon) * Q5TF / 0x64/* ) */;
  concat(Q496, "You guess the value of that item at ");
  string Q497 = Q4EF;
  concat(Q496, Q497);
  concat(Q496, " gold coin");
  if(Q4EF > 0x01)
  {
    concat(Q496, "s.");
  }
  else
  {
    concat(Q496, ".");
  }
  barkTo(user, user, Q496);
  return(0x00);
}