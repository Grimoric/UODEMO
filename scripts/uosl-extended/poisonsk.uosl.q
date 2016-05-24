// UOSL (enhanced)
inherits sndfx;

trigger message<"canUseSkill">(obj sender, list args)
{
  return(0x00);
}

trigger callback<0x4D>()
{
  detachScript(this, "poisonsk");
  return(0x00);
}

trigger message<"useSkill">(obj sender, list args)
{
  callback(this, 0x0A, 0x4D);
  member int Q5VJ = 0x00;
  systemMessage(this, "Select the poison you wish to use.");
  Q5VJ = 0x01;
  targetObj(this, this);
  return(0x00);
}

trigger targetobj(obj user, obj usedon)
{
  if(usedon == NULL())
  {
    return(0x00);
  }
  loc Q4VS = getLocation(user);
  loc there = getLocation(usedon);
  if(getDistanceInTiles(Q4VS, there) > 0x03)
  {
    systemMessage(this, "That is too far away for you to use.");
    return(0x00);
  }
  member obj Q5JG;
  member int Q5H9;
  if(Q5VJ == 0x01)
  {
    if((isMobile(usedon)) || (getObjType(usedon) != 0x0F0A))
    {
      systemMessage(user, "That is not a poison potion.");
      Q5VJ = 0x00;
      return(0x00);
    }
    Q5JG = usedon;
    Q5H9 = getObjVar(usedon, "power");
    Q5VJ = 0x02;
    systemMessage(user, "To what do you wish to apply the poison?");
    targetObj(user, this);
    return(0x00);
  }
  if(Q5VJ != 0x02)
  {
    Q5VJ = 0x00;
    return(0x00);
  }
  int food = 0x00;
  int drink = 0x00;
  int Q45S = 0x00;
  int Q5JH = 0x00;
  obj Q4NN;
  if(hasObjVar(usedon, "I_am_food"))
  {
    food = getObjVar(usedon, "I_am_food");
    if(food == 0x01)
    {
      Q5JH = 0x01;
    }
  }
  if(hasObjVar(usedon, "I_am_alcohol"))
  {
    Q45S = getObjVar(usedon, "I_am_alcohol");
    if(Q45S == 0x01)
    {
      Q5JH = 0x01;
    }
  }
  if(hasObjVar(usedon, "I_am_potable"))
  {
    drink = getObjVar(usedon, "I_am_potable");
    if(drink == 0x01)
    {
      Q5JH = 0x01;
    }
  }
  if(!isWeapon(usedon) && (!Q5JH))
  {
    systemMessage(user, "You cannot poison that! You can only poison bladed or piercing weapons, food or drink.");
    return(0x00);
  }
  if(isWeapon(usedon))
  {
    if(!isPiercing(usedon) && !isSlashing(usedon))
    {
      systemMessage(user, "You cannot poison that! You can only poison bladed or piercing weapons.");
      return(0x00);
    }
    if(!testSkill(user, 0x1E))
    {
      systemMessage(user, "You fail to apply a sufficient dose of poison on " + getWeaponName(usedon) + ".");
      Q4NN = createGlobalObjectAt(0x0F0E, there);
      destroyOne(Q5JG);
      return(0x00);
    }
    if(random(0x00, 0x64) < getSkillLevel(this, 0x1E))
    {
      systemMessage(user, "You apply a dose of poison to " + getWeaponName(usedon) + ".");
      if(Q5H9 != 0x01)
      {
        Q5H9 --;
      }
      else
      {
        Q5H9 = 0x01;
      }
      setObjVar(usedon, "poison_strength", Q5H9);
      sfx(getLocation(user), 0x0247, 0x00);
    }
    else
    {
      systemMessage(user, "You apply a strong dose of poison to " + getWeaponName(usedon) + ".");
      Q5H9;
      setObjVar(usedon, "poison_strength", Q5H9);
      sfx(getLocation(user), 0x0247, 0x00);
    }
    attachScript(usedon, "poisweap");
    setObjVar(usedon, "poison_chance", getSkillLevel(this, 0x1E) / 0x04);
    setObjVar(usedon, "poison_left", (0x14 - (Q5H9 * 0x02)));
    Q4NN = createGlobalObjectAt(0x0F0E, there);
    destroyOne(Q5JG);
    return(0x00);
  }
  else
  {
    if(!testSkill(user, 0x1E))
    {
      systemMessage(user, "You fail to apply a sufficient dose of poison to " + getName(usedon) + ".");
      return(0x00);
    }
    if(getSkillLevel(this, 0x1E) < random(0x00, 0x64))
    {
      systemMessage(user, "You apply a dose of poison to " + getName(usedon) + ".");
      if(Q5H9 > 0x01)
      {
        Q5H9 --;
      }
      setObjVar(usedon, "poison_strength", Q5H9);
      sfx(getLocation(user), 0x0247, 0x00);
    }
    else
    {
      systemMessage(user, "You apply a strong dose of poison to " + getName(usedon) + ".");
      if(Q5H9 < 0x05)
      {
        Q5H9 ++;
      }
      setObjVar(usedon, "poison_strength", Q5H9);
      sfx(getLocation(user), 0x0247, 0x00);
    }
    copyControllerInfo(usedon, user);
    attachScript(usedon, "poisfood");
    setObjVar(usedon, "poison_chance", getSkillLevel(this, 0x1E) / 0x04);
    Q4NN = createGlobalObjectAt(0x0F0E, there);
    destroyOne(Q5JG);
    return(0x00);
  }
  return(0x00);
}