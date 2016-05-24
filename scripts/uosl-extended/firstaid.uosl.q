// UOSL (enhanced)
inherits sndfx;

trigger use(obj user)
{
  systemMessage(user, "Who will you use the bandages on?");
  targetObj(user, this);
  return(0x00);
}

trigger targetobj(obj user, obj usedon)
{
  if(usedon == NULL())
  {
    return(0x00);
  }
  if(!isFreelyViewable(usedon, user))
  {
    systemMessage(user, "You can not see that.");
    return(0x00);
  }
  if(getDistanceInTiles(getLocation(usedon), getLocation(user)) > 0x03)
  {
    systemMessage(user, "That is too far away.");
    return(0x00);
  }
  list Q4F7 = 0xD0, 0xCD, 0xCF, 0xDF, 0xCA, 0xD5, 0x31, 0xD4, 0xD3, 0xC8, 0xD2, 0xD9, 0xE1, 0xC9, 0xD8, 0xD1, 0xCB, 0xE2, 0xDA, 0xD6, 0xE7, 0xE4;
  if(!isMobile(usedon))
  {
    systemMessage(user, "That cannot be healed.");
    return(0x00);
  }
  int Q4G6 = getCurHP(usedon);
  int Q56H = getMaxHP(usedon);
  if(Q4G6 == Q56H)
  {
    systemMessage(user, "That being is undamaged.");
    return(0x00);
  }
  if(hasScript(usedon, "noheal"))
  {
    systemMessage(user, "This being cannot be newly bandaged yet.");
    return(0x00);
  }
  int Q48O = getObjType(usedon);
  int okay = 0x00;
  int skill = 0x00;
  if(isInList(Q4F7, Q48O))
  {
    okay = 0x01;
    skill = 0x27;
  }
  else
  {
    okay = 0x01;
    skill = 0x11;
  }
  if(okay)
  {
    int damage = Q56H - Q4G6;
    int Q4GN = damage * 0x03E8 / Q56H;
    int Q5NL = testAndLearnSkill(user, skill, Q4GN, 0x32);
    int Q4VP = 0x01;
    if(Q5NL > 0x00)
    {
      sfx(getLocation(usedon), 0x57, 0x00);
      Q4VP = (damage * (0x32 + Q5NL / 0x14)) / 0x64;
    }
    if((Q4G6 + Q4VP) <= Q56H)
    {
      addHP(usedon, Q4VP);
    }
    else
    {
      setCurHP(usedon, Q56H);
    }
    attachScript(usedon, "noheal");
    callback(usedon, 0xB4, 0x2C);
    if(Q4VP <= 0x01)
    {
      systemMessage(user, "You apply the bandages, but they barely help.");
    }
    else
    {
      systemMessage(user, "You apply the bandages.");
    }
    destroyOne(this);
    return(0x00);
  }
  else
  {
    systemMessage(user, "Bandages can not be used on that.");
  }
  return(0x00);
}