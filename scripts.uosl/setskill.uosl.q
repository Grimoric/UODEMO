// UOSL (native)
inherits sk_table;

trigger use
{
  string skill = "UNKNOWN";
  skill = getObjVar(this, "skill");
  int Q5TK;
  if(skill == "SKILL_ALCHEMY")
  {
    Q5TK = 0x00;
  }
  if(skill == "SKILL_ANATOMY")
  {
    Q5TK = 0x01;
  }
  if(skill == "SKILL_ANIMAL_LORE")
  {
    Q5TK = 0x02;
  }
  if(skill == "SKILL_APPRAISE")
  {
    Q5TK = 0x03;
  }
  if(skill == "SKILL_ARMSLORE")
  {
    Q5TK = 0x04;
  }
  if(skill == "SKILL_BATTLE_DEFENSE")
  {
    Q5TK = 0x05;
  }
  if(skill == "SKILL_BEGGING")
  {
    Q5TK = 0x06;
  }
  if(skill == "SKILL_BLACKSMITH")
  {
    Q5TK = 0x07;
  }
  if(skill == "SKILL_FLETCHER")
  {
    Q5TK = 0x08;
  }
  if(skill == "SKILL_CALM")
  {
    Q5TK = 0x09;
  }
  if(skill == "SKILL_CAMPING")
  {
    Q5TK = 0x0A;
  }
  if(skill == "SKILL_CARPENTRY")
  {
    Q5TK = 0x0B;
  }
  if(skill == "SKILL_MAPMAKING")
  {
    Q5TK = 0x0C;
  }
  if(skill == "SKILL_COOKING")
  {
    Q5TK = 0x0D;
  }
  if(skill == "SKILL_DETECT_HIDDEN")
  {
    Q5TK = 0x0E;
  }
  if(skill == "SKILL_ENTICE")
  {
    Q5TK = 0x0F;
  }
  if(skill == "SKILL_EVALUATE")
  {
    Q5TK = 0x10;
  }
  if(skill == "SKILL_FIRST_AID")
  {
    Q5TK = 0x11;
  }
  if(skill == "SKILL_FISHING")
  {
    Q5TK = 0x12;
  }
  if(skill == "SKILL_FORENSICS")
  {
    Q5TK = 0x13;
  }
  if(skill == "SKILL_HERDING")
  {
    Q5TK = 0x14;
  }
  if(skill == "SKILL_HIDE")
  {
    Q5TK = 0x15;
  }
  if(skill == "SKILL_INCITE")
  {
    Q5TK = 0x16;
  }
  if(skill == "SKILL_PICK_LOCK")
  {
    Q5TK = 0x18;
  }
  if(skill == "SKILL_MAGIC")
  {
    Q5TK = 0x19;
  }
  if(skill == "SKILL_MAGIC_DEFENSE")
  {
    Q5TK = 0x1A;
  }
  if(skill == "SKILL_MELEE")
  {
    Q5TK = 0x1B;
  }
  if(skill == "SKILL_PEEK")
  {
    Q5TK = 0x1C;
  }
  if(skill == "SKILL_PLAY")
  {
    Q5TK = 0x1D;
  }
  if(skill == "SKILL_POISONING")
  {
    Q5TK = 0x1E;
  }
  if(skill == "SKILL_RANGED_WEAPONS")
  {
    Q5TK = 0x1F;
  }
  if(skill == "SKILL_SEANCE")
  {
    Q5TK = 0x20;
  }
  if(skill == "SKILL_STEALING")
  {
    Q5TK = 0x21;
  }
  if(skill == "SKILL_TAILOR")
  {
    Q5TK = 0x22;
  }
  if(skill == "SKILL_TAME_ANIMAL")
  {
    Q5TK = 0x23;
  }
  if(skill == "SKILL_TASTE")
  {
    Q5TK = 0x24;
  }
  if(skill == "SKILL_TINKER")
  {
    Q5TK = 0x25;
  }
  if(skill == "SKILL_TRACKING")
  {
    Q5TK = 0x26;
  }
  if(skill == "SKILL_VET")
  {
    Q5TK = 0x27;
  }
  if(skill == "UNKNOWN")
  {
    systemMessage(user, "Unknown skill type");
    return(0x00);
  }
  int value = getObjVar(this, "value");
  if(value > 0x64)
  {
    systemMessage(user, "Value too high.  0-100 only");
    return(0x00);
  }
  setSkillLevel(user, Q5TK, value * 0x0A);
  string Q5X5 = value;
  systemMessage(user, skill + " = " + Q5X5);
  return(0x00);
}