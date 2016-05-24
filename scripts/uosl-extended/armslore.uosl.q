// UOSL (enhanced)
inherits sk_table;

trigger message<"canUseSkill">(obj sender, list args)
{
  return(0x00);
}

trigger callback<0x4D>()
{
  detachScript(this, "armslore");
  return(0x00);
}

trigger message<"useSkill">(obj sender, list args)
{
  callback(this, 0x0A, 0x4D);
  targetObj(this, this);
  systemMessage(this, "What item do you wish to get information about?");
  return(0x00);
}

trigger oortargetobj(obj user, obj usedon)
{
  if(usedon == NULL())
  {
    return(0x00);
  }
  loc Q4VS = getLocation(user);
  loc there = getLocation(usedon);
  if(getDistanceInTiles(Q4VS, there) > 0x03)
  {
    systemMessage(user, "You are too far away to tell much about it.");
    return(0x00);
  }
  if(!isFreelyViewable(usedon, user))
  {
    systemMessage(user, "You can't see it well enough to tell much about it.");
    return(0x00);
  }
  if(!isWeapon(usedon))
  {
    systemMessage(user, "This is neither weapon nor armor.");
    return(0x00);
  }
  if(!skillTest(user, 0x04))
  {
    systemMessage(user, "You are not certain...");
    return(0x00);
  }
  int Q65K = 0x00;
  int Q4GH = getAverageDamage(usedon);
  int Q44Z = getCurArmorClass(usedon);
  int Q5TO = isSlashing(usedon);
  int Q5IC = isPiercing(usedon);
  int Q47X = isBashing(usedon);
  int range = getWeaponRange(usedon);
  int ranged = isRanged(usedon);
  int poison = hasScript(usedon, "poisweap");
  if(getWeaponHandedness(usedon) == 0x04)
  {
    Q65K = 0x01;
  }
  else
  {
    Q65K = 0x00;
  }
  string weapon = getWeaponName(usedon);
  string damage = "";
  string Q65M = "";
  string Q5LE = "";
  string Q5KT = "";
  if(Q4GH)
  {
    if(Q4GH < 0x03)
    {
      damage = "might scratch your opponent slightly";
    }
    if(Q4GH > 0x02)
    {
      damage = "would do minimal damage";
    }
    if(Q4GH > 0x05)
    {
      damage = "would do some damage";
    }
    if(Q4GH > 0x0A)
    {
      damage = "would probably hurt your opponent a fair amount";
    }
    if(Q4GH > 0x0F)
    {
      damage = "would inflict quite a lot of damage and pain";
    }
    if(Q4GH > 0x14)
    {
      damage = "would be a superior weapon";
    }
    if(Q4GH > 0x19)
    {
      damage = "would be extraordinarily deadly";
    }
    Q65M = " when you hit someone with it";
    if(Q5IC)
    {
      Q65M = " when you stabbed ";
      if(ranged)
      {
        Q65M = " when you shot someone ";
      }
      if(Q5TO)
      {
        concat(Q65M, "or slashed ");
      }
      if(Q47X)
      {
        concat(Q65M, "or bashed ");
      }
      concat(Q65M, "with it");
    }
    if(Q5TO)
    {
      Q65M = " when you slashed ";
      if(Q5IC)
      {
        concat(Q65M, "or stabbed ");
      }
      if(Q47X)
      {
        concat(Q65M, "or bashed ");
      }
      concat(Q65M, "with it");
    }
    if((Q47X) && (range > 0x02))
    {
      Q65M = "";
    }
    if((Q47X) && (range < 0x03))
    {
      Q65M = " when you bashed ";
      if(Q5TO)
      {
        concat(Q65M, "or slashed ");
      }
      if(Q5IC)
      {
        concat(Q65M, "or stabbed ");
      }
      concat(Q65M, "with it");
    }
    if((Q65K == 0x01) && (range < 0x03))
    {
      concat(Q65M, " twohanded");
    }
    Q5LE = " at short range";
    if(ranged)
    {
      Q5LE = "";
    }
    if(range == 0x02)
    {
      Q5LE = ", and it has a good reach";
    }
    if((range > 0x02) && (!ranged))
    {
      Q5LE = " at long range";
    }
  }
  else
  {
    if(Q44Z < 0x01)
    {
      Q5KT = "offers no defense against attackers";
    }
    if(Q44Z > 0x00)
    {
      Q5KT = "provides almost no protection";
    }
    if(Q44Z > 0x05)
    {
      Q5KT = "provides very little protection";
    }
    if(Q44Z > 0x0A)
    {
      Q5KT = "offers some protection against blows";
    }
    if(Q44Z > 0x0F)
    {
      Q5KT = "serves as sturdy protection";
    }
    if(Q44Z > 0x14)
    {
      Q5KT = "is a superior defense against attack";
    }
    if(Q44Z > 0x19)
    {
      Q5KT = "offers excellent protection";
    }
    if(Q44Z > 0x1E)
    {
      Q5KT = "is superbly crafted to provide maximum protection";
    }
  }
  string Q5ZQ = "This " + weapon + " " + Q5KT + damage + Q65M + Q5LE + ".";
  if((Q44Z == 0x00) && (Q4GH == 0x00))
  {
    Q5ZQ = "This so-called ";
    concat(Q5ZQ, weapon);
    concat(Q5ZQ, " is useless.");
  }
  if(getWeaponMinStr(usedon) > getStrength(user))
  {
    concat(Q5ZQ, " It is too heavy for you, though. ");
  }
  int Q48B = getWeaponMaxHP(usedon);
  int Q4FV = getWeaponCurHP(usedon);
  concat(Q5ZQ, "  It looks ");
  int Q61C = 0x0A * Q4FV / Q48B;
  switch(Q61C)
  {
  default:
  case 0x01:
    concat(Q5ZQ, "like it is about to fall apart.");
    break;
  case 0x02:
    concat(Q5ZQ, "rather flimsy and not at all trustworthy.");
    break;
  case 0x03:
    concat(Q5ZQ, "somewhat badly damaged.");
    break;
  case 0x04:
    concat(Q5ZQ, "rather battered.");
    break;
  case 0x05:
    concat(Q5ZQ, "like it has been well-used.");
    break;
  case 0x06:
    concat(Q5ZQ, "to have suffered some wear and tear.");
    break;
  case 0x07:
    concat(Q5ZQ, "to be in fairly good condition.");
    break;
  case 0x08:
    concat(Q5ZQ, "barely used, with just a few nicks and scratches.");
    break;
  case 0x09:
    concat(Q5ZQ, "almost new.");
    break;
  case 0x0A:
    concat(Q5ZQ, "brand-new.");
    break;
  }
  if(poison)
  {
    concat(Q5ZQ, " It appears to have poison smeared on it.");
  }
  systemMessage(user, Q5ZQ);
  return(0x00);
}