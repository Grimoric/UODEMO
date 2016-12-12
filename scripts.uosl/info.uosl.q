// UOSL (native)
inherits spelskil;

function void Q47O(obj usedon, obj user)
{
  if(!isEditing(user))
  {
    return();
  }
  systemMessage(user, getName(usedon));
  systemMessage(user, "Loc=<" + getLocation(usedon) + ">");
  int num;
  int Q5T5;
  int mod;
  int Q4PP;
  if(isContainer(usedon))
  {
    int Q4Q1 = openContainer(user, usedon);
    list Q4E4;
    getContents(Q4E4, usedon);
    systemMessage(user, "# Items contained=" + numInList(Q4E4));
  }
  if(isMobile(usedon))
  {
    systemMessage(user, "Notoriety=" + getNotoriety(usedon));
    systemMessage(user, "Fame=" + getFame(usedon));
    systemMessage(user, "Karma=" + getKarma(usedon));
    getWeaponClass(usedon, num, Q5T5, mod, Q4PP);
    systemMessage(user, "NaturalWC=" + num + "d" + Q5T5 + "+" + mod);
    int s;
    int d;
    int i;
    s = getRealStat(usedon, 0x00);
    d = getRealStat(usedon, 0x01);
    i = getRealStat(usedon, 0x02);
    systemMessage(user, "Stats=" + s + "s " + d + "d " + i + "i  Total=" + (s + d + i));
    s = getStatMod(usedon, 0x00);
    d = getStatMod(usedon, 0x01);
    i = getStatMod(usedon, 0x02);
    systemMessage(user, "StatMods=" + s + "s " + d + "d " + i + "i  Total=" + (s + d + i));
    systemMessage(user, "Skill Total=" + getSkillTotal(usedon));
    int Q57X = 0x00;
    for(i = 0x00; i < 0x2E; i ++)
    {
      mod = getSkillMod(usedon, i);
      if(mod > 0x00)
      {
        Q57X = Q57X + mod;
        systemMessage(user, "#" + i + ": " + getSkillName(i) + " mod=" + mod);
      }
    }
    systemMessage(user, "Total skill mods=" + Q57X);
  }
  else
  {
    systemMessage(user, "Type=" + getObjType(usedon));
    int Q4XG = getHue(usedon);
    if(Q4XG != 0x00)
    {
      systemMessage(user, "Hue=" + Q4XG);
    }
  }
  systemMessage(user, "Value=" + getValue(usedon));
  systemMessage(user, "Weight=" + getWeight(usedon));
  if(isWeapon(usedon))
  {
    getWeaponClass(usedon, num, Q5T5, mod, Q4PP);
    systemMessage(user, "WC=" + num + "d" + Q5T5 + "+" + mod);
    systemMessage(user, "AC=" + getCurArmorClass(usedon));
    systemMessage(user, "HP=(" + getWeaponCurHP(usedon) + "/" + getWeaponMaxHP(usedon) + ")");
    systemMessage(user, "Speed=" + getWeaponSpeed(usedon));
    systemMessage(user, "Eqpos=" + getEquipSlot(usedon));
    return();
  }
  return();
}

trigger use
{
  targetObj(user, this);
  return(0x01);
}

trigger lookedat
{
  Q47O(this, looker);
  return(0x01);
}

trigger oortargetobj
{
  Q47O(usedon, user);
  return(0x00);
}