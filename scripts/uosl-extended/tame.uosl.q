// UOSL (enhanced)
inherits sk_table;

member obj Q487;
member int Q5YI;

trigger message<"canUseSkill">(obj sender, list args)
{
  return(0x00);
}

trigger message<"useSkill">(obj sender, list args)
{
  callback(this, 0x0A, 0x5C);
  systemMessage(this, "Tame which animal?");
  targetObj(this, this);
  return(0x00);
}

trigger callback<0x5C>()
{
  if(Q5YI == 0x00)
  {
    detachScript(this, "tame");
  }
  return(0x00);
}

function void Q5LB(obj animal)
{
  string name = getName(animal);
  removePrefix(name, "a ");
  removePrefix(name, "an ");
  switch(random(0x00, 0x09))
  {
  case 0x00:
  case 0x01:
    bark(this, "Here " + name + ".");
    break;
  case 0x02:
  case 0x03:
    bark(this, "Nice " + name + ".");
    break;
  case 0x04:
  case 0x05:
    bark(this, "Good " + name + ".");
    break;
  case 0x06:
    bark(this, "Will you be my friend?");
    break;
  case 0x07:
    bark(this, "I've always wanted a pet like you.");
    break;
  case 0x08:
    bark(this, "Don't be afraid.");
    break;
  case 0x09:
    bark(this, "I won't hurt you.");
    break;
  }
  return;
}

trigger callback<0x5D>()
{
  if(!hasScript(Q487, "beingtamed"))
  {
    ebarkTo(Q487, this, "The animal is too angry to continue taming.");
    detachScript(this, "tame");
    return(0x00);
  }
  if(getDistanceInTiles(getLocation(this), getLocation(Q487)) > 0x07)
  {
    ebarkTo(Q487, this, "You are too far away to continue taming.");
    callback(Q487, 0x00, 0x5C);
    detachScript(this, "tame");
    return(0x00);
  }
  Q5YI ++;
  if(Q5YI < 0x05)
  {
    if(random(0x00, 0x01) == 0x00)
    {
      Q5LB(Q487);
    }
    shortCallback(this, 0x08, 0x5D);
    return(0x00);
  }
  callback(Q487, 0x00, 0x5C);
  int success = testAndLearnSkill(this, 0x23, 0x0C * getObjVar(Q487, "petCanTame"), 0x32);
  if(success >= 0x03E8)
  {
    ebarkTo(Q487, this, "That wasn't even challenging.");
  }
  if(success < 0x00)
  {
    ebarkTo(Q487, this, "You fail to tame the creature.");
    detachScript(this, "tame");
    return(0x00);
  }
  if(success > 0x0384)
  {
    success = 0x0384;
  }
  list myBoss = this;
  setObjVar(Q487, "myBoss", myBoss);
  setObjVar(Q487, "myLoyalty", success / 0x0A + 0x0A);
  setObjVar(Q487, "isPet", 0x01);
  makeBeelineFailPathfind(Q487, 0x01);
  disableBehaviors(Q487);
  attachScript(Q487, "pet");
  ebarkTo(Q487, this, "It seems to accept you as master.");
  detachScript(this, "tame");
  return(0x00);
}

trigger targetobj(obj user, obj usedon)
{
  if(usedon == NULL())
  {
    detachScript(this, "tame");
    return(0x00);
  }
  if(!canSeeObj(this, usedon))
  {
    ebarkTo(usedon, this, "You can't see that.");
    detachScript(this, "tame");
    return(0x00);
  }
  if((!isMobile(usedon)) || (!hasObjVar(usedon, "petCanTame")))
  {
    ebarkTo(usedon, this, "You can't tame that!");
    detachScript(this, "tame");
    return(0x00);
  }
  if(hasScript(usedon, "beingtamed"))
  {
    ebarkTo(usedon, this, "Someone else is already taming this.");
    detachScript(this, "tame");
    return(0x00);
  }
  if(getDistanceInTiles(getLocation(this), getLocation(usedon)) > 0x03)
  {
    ebarkTo(usedon, this, "It's too far away.");
    detachScript(this, "tame");
    return(0x00);
  }
  if(hasObjListVar(usedon, "myBoss"))
  {
    ebarkTo(usedon, this, "That animal looks tame already.");
    detachScript(this, "tame");
    return(0x00);
  }
  int Q46B = getObjType(usedon);
  if((Q46B == 0x0C) || (Q46B == 0x3B) || (Q46B == 0x3C) || (Q46B == 0x3D))
  {
    int Q4AY = random(0x01, 0x0A);
    if(Q4AY != 0x01)
    {
      ebarkTo(usedon, this, "You seem to anger the beast!");
      attack(usedon, this);
      detachScript(this, "tame");
      return(0x00);
    }
  }
  int success = getSkillSuccessChance(this, 0x23, 0x0C * getObjVar(usedon, "petCanTame"), 0x32);
  if(success <= 0x00)
  {
    ebarkTo(usedon, this, "You have no chance of taming this creature.");
    detachScript(this, "tame");
    return(0x00);
  }
  Q487 = usedon;
  actionBark(this, 0x59, "*You start to tame " + getName(Q487) + ".*", "*" + getName(this) + " starts to tame " + getName(Q487) + ".*");
  attachScript(Q487, "beingtamed");
  Q5YI = 0x00;
  shortCallback(this, 0x08, 0x5D);
  return(0x00);
}