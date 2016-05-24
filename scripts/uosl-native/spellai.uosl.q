// UOSL (native)
inherits spelskil;

member int Q559;
member int Q4AP;
member int Q59M;
member int Q59X;
member int Q564;
member int Q63K;
member int Q48D;
member int Q55A;
member int Q52U;
member int Q63S;
member int Q453;
member int Q42X;
member int Q42W;
member int Q42V;
member int Q42U;
member int Q5XJ;
member int Q5UX;

forward void Q4O9(obj Q5DM);
forward int Q5YA(obj user, int Q55B);
forward int Q4BF(int Q453);
forward void Q5UO(obj Q5DM);

member list Q56P;

function int Q4PA(int maxValue, int Q5HW)
{
  return((maxValue * Q5HW) / 0x64);
}

function int Q4OB()
{
  Q55A = 0x00;
  Q52U = 0x00;
  if(Q559 < 0x4E)
  {
    Q55A ++;
  }
  if(Q559 < 0x1A)
  {
    Q55A ++;
  }
  if(Q559 < 0x10)
  {
    Q55A ++;
  }
  if(Q559 < 0x0A)
  {
    Q55A ++;
  }
  if(Q559 < 0x06)
  {
    Q55A ++;
  }
  if(Q4AP < 0x08)
  {
    Q52U ++;
  }
  if(Q4AP < 0x06)
  {
    Q52U ++;
  }
  if(Q4AP < 0x05)
  {
    Q52U ++;
  }
  if(Q4AP < 0x04)
  {
    Q52U ++;
  }
  if(Q4AP < 0x03)
  {
    Q52U ++;
  }
  if(Q55A < Q52U)
  {
    Q48D = Q52U;
  }
  else
  {
    Q48D = Q55A;
  }
  string Q56J = Q55A;
  string Q52D = Q52U;
  string b = Q48D;
  return(Q48D);
}

function int Q4GK()
{
  Q55A = 0x00;
  Q52U = 0x00;
  if(Q559 < 0x4E)
  {
    Q55A ++;
  }
  if(Q559 < 0x1A)
  {
    Q55A ++;
  }
  if(Q559 < 0x10)
  {
    Q55A ++;
  }
  if(Q559 < 0x0A)
  {
    Q55A ++;
  }
  if(Q559 < 0x06)
  {
    Q55A ++;
  }
  if(Q559 < 0x04)
  {
    Q55A ++;
  }
  if(Q4AP < 0x07)
  {
    Q52U ++;
  }
  if(Q4AP < 0x06)
  {
    Q52U ++;
    Q52U ++;
  }
  if(Q4AP < 0x05)
  {
    Q52U ++;
  }
  if(Q4AP < 0x04)
  {
    Q52U ++;
  }
  if(Q4AP < 0x03)
  {
    Q52U ++;
  }
  if(Q4AP < 0x02)
  {
    Q52U ++;
  }
  if(Q55A < Q52U)
  {
    Q48D = Q52U;
  }
  else
  {
    Q48D = Q55A;
  }
  string Q56J = Q55A;
  string Q52D = Q52U;
  string b = Q48D;
  return(Q48D);
}

function int Q5BJ()
{
  Q55A = 0x00;
  Q52U = 0x00;
  if(Q559 < 0x34)
  {
    Q55A ++;
  }
  if(Q559 < 0x10)
  {
    Q55A ++;
  }
  if(Q4AP < 0x07)
  {
    Q52U ++;
  }
  if(Q4AP < 0x05)
  {
    Q52U ++;
  }
  if(Q55A < Q52U)
  {
    Q48D = Q52U;
  }
  else
  {
    Q48D = Q55A;
  }
  string Q56J = Q55A;
  string Q52D = Q52U;
  string b = Q48D;
  return(Q48D);
}

function int Q4TY()
{
  Q55A = 0x00;
  Q52U = 0x00;
  if(Q559 < 0x06)
  {
    Q55A ++;
  }
  if(Q4AP < 0x04)
  {
    Q52U ++;
  }
  if(Q55A < Q52U)
  {
    Q48D = Q52U;
  }
  else
  {
    Q48D = Q55A;
  }
  string Q56J = Q55A;
  string Q52D = Q52U;
  string b = Q48D;
  return(Q48D);
}

function int Q4AK()
{
  Q453 = 0x00;
  if(random(0x00, 0x01) == 0x01)
  {
    Q63S = Q4GK();
    Q453 = Q453 + 0x08;
  }
  else
  {
    if(Q559 < 0x06)
    {
      if(random(0x00, 0x01) == 0x00)
      {
        Q453 = Q453 + 0x08;
      }
    }
    Q63S = Q4OB();
  }
  Q453 = Q453 + random(Q63S, 0x07);
  Q5XJ = Q4BF(Q453);
  if(Q5XJ == 0x00)
  {
    return(Q453);
  }
  return(Q5XJ);
}

function int Q4AI()
{
  Q453 = 0x08;
  Q63S = Q4GK();
  Q453 = Q453 + random(Q63S, 0x07);
  Q5XJ = Q4BF(Q453);
  if(Q5XJ == 0x00)
  {
    return(Q453);
  }
  return(Q5XJ);
}

function int Q4AN()
{
  Q453 = 0x10;
  if(Q559 < 0x0A)
  {
    Q453 = 0x0F;
  }
  else
  {
    Q63S = Q5BJ();
    Q453 = Q453 + random(Q63S, 0x02);
  }
  if(Q4AP < 0x04)
  {
    return(0x00 - 0x10);
  }
  Q5XJ = Q4BF(Q453);
  if(Q5XJ == 0x00)
  {
    return(Q453);
  }
  return(Q5XJ);
}

function int Q4AL()
{
  Q453 = 0x13;
  if(Q559 < 0x04)
  {
    Q453 = 0x0F;
  }
  else
  {
    Q63S = Q4TY();
    Q453 = Q453 + random(Q63S, 0x04);
  }
  if(Q4AP < 0x02)
  {
    return(0x00 - 0x13);
  }
  Q5XJ = Q4BF(Q453);
  if(Q5XJ == 0x00)
  {
    return(Q453);
  }
  return(Q5XJ);
}

function int Q4AM()
{
  Q453 = 0x18;
  Q42W = Q4PA(Q564, 0x32);
  if(Q559 < 0x0C)
  {
    Q453 = 0x19;
  }
  if(Q42W < Q59M)
  {
    Q453 = 0x19;
  }
  string Q44Z = Q453;
  return(Q453);
}

function int Q4AJ()
{
  string Q44Z = Q453;
  if(Q4AP < 0x06)
  {
    return(0x00);
  }
  return(0x1A);
}

trigger creation
{
  Q59M = getCurHP(this);
  Q564 = getMaxHP(this);
  Q42X = Q4PA(Q564, 0x4B);
  Q42V = Q4PA(Q564, 0x19);
  Q42U = Q4PA(Q564, 0x0A);
  Q59X = Q59M;
  return(0x01);
}

function void Q5UO(obj Q5DM)
{
  obj target = getFirstVisableTargetInRange(Q5DM, 0x09);
  if(target == NULL())
  {
    return();
  }
  loc there = getLocation(target);
  int Q4WB = getCurHP(Q5DM);
  Q559 = getCurMana(Q5DM);
  int intelligence = getIntelligence(Q5DM);
  if(!hasObjVar(this, "spellCastersLevel"))
  {
    return();
  }
  Q4AP = getObjVar(Q5DM, "spellCastersLevel");
  int Q4Y4;
  if(!getCompileFlag(0x01))
  {
    Q4Y4 = getNotoriety(Q5DM);
  }
  else
  {
    Q4Y4 = getKarmaLevel(Q5DM);
  }
  int Q5UN;
  int Q5X7;
  int Q4OE;
  int Q4AY;
  int targetType;
  int Q5MQ;
  int Q4GM;
  int neutral;
  int good;
  int heal;
  if(Q42X <= Q4WB)
  {
    Q5X7 = 0x01;
  }
  if(Q42V <= Q4WB)
  {
    if(Q4WB < Q42X)
    {
      Q5X7 = 0x02;
    }
  }
  if(Q42U <= Q4WB)
  {
    if(Q4WB < Q42V)
    {
      Q5X7 = 0x03;
    }
  }
  else
  {
    Q5X7 = 0x04;
  }
  string Q4XE = Q42X;
  string Q4XD = Q42V;
  string Q4XC = Q42U;
  string Q4UO = Q4WB;
  string Q5VH = Q5X7;
  Q4OE = 0x00;
  switch(Q5X7)
  {
  case 0x01
    Q4GM = 0x00;
    break;
  case 0x02
    Q4GM = 0x37;
    neutral = 0x28;
    good = 0x1C;
    heal = 0x03;
    break;
  case 0x03
    Q4GM = 0x50;
    neutral = 0x46;
    good = 0x3C;
    heal = 0x0F;
    break;
  case 0x04
    Q4GM = 0x5F;
    neutral = 0x5A;
    good = 0x55;
    heal = 0x0F;
    break;
  case 0x05
    Q4GM = 0x64;
    neutral = 0x64;
    good = 0x55;
    heal = 0x0F;
    break;
  default
    break;
  }
  list Q4OC = 0x1F4A, 0x03, 0x0A, 0x1F5A, 0x02, 0x1A, 0x1F3E, 0x03, 0x06, 0x1F47, 0x03, 0x0A, 0x1F40, 0x03, 0x06, 0x1F2E, 0x03, 0x02, 0x1F30, 0x03, 0x02, 0x1F34, 0x03, 0x02;
  list Q4GL = 0x1F5F, 0x03, 0x34, 0x1F57, 0x03, 0x1A, 0x1F56, 0x03, 0x1A, 0x1F52, 0x03, 0x10, 0x1F4A, 0x03, 0x0A, 0x1F3E, 0x03, 0x06, 0x1F38, 0x03, 0x04, 0x1F32, 0x03, 0x02;
  list Q5BK = 0x1F61, 0x03, 0x34, 0x1F50, 0x01, 0x10, 0x1F4B, 0x02, 0x0A;
  list Q4U0 = 0x1F3D, 0x01, 0x06, 0x1F3B, 0x01, 0x04, 0x1F3C, 0x01, 0x04, 0x1F36, 0x01, 0x04, 0x1F35, 0x01, 0x04;
  list Q4VN = 0x1F49, 0x01, 0x0A, 0x1F31, 0x01, 0x02;
  list Q4O6 = 0x1F58, 0x01, 0x1A;
  string Q47Q = Q559;
  if(Q559 < 0x02)
  {
    int Q4AZ = random(0x01, 0x64);
    if(Q4AZ < 0x23)
    {
      attack(this, target);
      return();
    }
    else
    {
      return();
    }
  }
  Q4AY = random(0x00, 0x64);
  if(Q4GM <= Q4AY)
  {
    if(Q4Y4 < 0x00)
    {
      Q4OE = Q4AK();
      if(Q4OE < 0x08)
      {
        Q5UX = Q4OC[Q4OE * 0x03];
        targetType = Q4OC[(Q4OE * 0x03) + 0x01];
        Q5MQ = Q4OC[(Q4OE * 0x03) + 0x02];
      }
      else
      {
        Q4OE = (Q4OE - 0x08);
        Q5UX = Q4GL[Q4OE * 0x03];
        targetType = Q4GL[(Q4OE * 0x03) + 0x01];
        Q5MQ = Q4GL[(Q4OE * 0x03) + 0x02];
      }
    }
    else
    {
      Q4OE = (Q4AI() - 0x08);
      Q5UX = Q4GL[Q4OE * 0x03];
      targetType = Q4GL[(Q4OE * 0x03) + 0x01];
      Q5MQ = Q4GL[(Q4OE * 0x03) + 0x02];
    }
  }
  if(neutral <= Q4AY)
  {
    if(Q4AY < Q4GM)
    {
      Q4OE = (Q4AN() - 0x10);
      if(Q4OE == (0x00 - 0x10))
      {
        Q5UO(this);
        return();
      }
      Q5UX = Q5BK[Q4OE * 0x03];
      targetType = Q5BK[(Q4OE * 0x03) + 0x01];
      Q5MQ = Q5BK[(Q4OE * 0x03) + 0x02];
    }
  }
  if(good <= Q4AY)
  {
    if(Q4AY < neutral)
    {
      Q4OE = (Q4AL() - 0x13);
      if(Q4OE == (0x00 - 0x13))
      {
        Q5UO(this);
        return();
      }
      Q5UX = Q4U0[Q4OE * 0x03];
      targetType = Q4U0[(Q4OE * 0x03) + 0x01];
      Q5MQ = Q4U0[(Q4OE * 0x03) + 0x02];
    }
  }
  if(heal <= Q4AY)
  {
    if(Q4AY < good)
    {
      Q4OE = (Q4AM() - 0x18);
      Q5UX = Q4VN[Q4OE * 0x03];
      targetType = Q4VN[(Q4OE * 0x03) + 0x01];
      Q5MQ = Q4VN[(Q4OE * 0x03) + 0x02];
    }
  }
  else
  {
    Q4OE = (Q4AJ() - 0x1A);
    if(Q4OE == (0x00 - 0x1A))
    {
      Q5UO(this);
      return();
    }
    Q5UX = Q4O6[Q4OE * 0x03];
    targetType = Q4O6[(Q4OE * 0x03) + 0x01];
    Q5MQ = Q4O6[(Q4OE * 0x03) + 0x02];
  }
  obj scroll = createGlobalObjectIn(Q5UX, Q5DM);
  if(scroll == NULL())
  {
    return();
  }
  obj Q4GD;
  loc Q4GE;
  if(Q5YA(Q5DM, Q5MQ) == 0x00)
  {
    deleteObject(scroll);
    list Q5DR;
    shortcallback(this, 0x01, 0x48);
    return();
  }
  setObjVar(scroll, "user", Q5DM);
  string Q65H = targetType;
  switch(targetType)
  {
  case 0x01
    Q4GD = Q5DM;
    setObjVar(scroll, "target", Q4GD);
    break;
  case 0x02
    Q4GD = target;
    setObjVar(scroll, "target", Q4GD);
    break;
  case 0x03
    Q4GD = target;
    setObjVar(scroll, "target", Q4GD);
    break;
  default
  }
  shortcallback(scroll, 0x00, 0x49);
  callback(Q5DM, 0x03, 0x48);
  return();
}

function void Q4O9(obj Q5DM)
{
  if(getNumTargets(Q5DM) <= 0x00)
  {
    return();
  }
  Q5UO(Q5DM);
  return();
}

function int Q4UY(obj me, obj attacker)
{
  int Q5HD;
  Q63K = Q59X - getCurHP(me);
  Q59X = getCurHP(me);
  Q5LZ(this, 0x2D, 0x06, 0x0C);
  return(0x00);
}

trigger gotattacked
{
  return(Q4UY(this, attacker));
}

trigger washit
{
  return(Q4UY(this, attacker));
}

function int Q5YA(obj user, int Q55B)
{
  if(Q55B > (getCurMana(this)))
  {
    return(0x00);
  }
  loseMana(this, Q55B);
  return(0x01);
  return(0x00);
}

function int Q4BF(int Q453)
{
  obj target = getFirstVisableTargetInRange(this, 0x09);
  if(target == NULL())
  {
    return(Q453);
  }
  int Q4E6;
  switch(Q453)
  {
  case 0x04
    if(hasScript(target, "poisoned"))
    {
      Q4E6 = 0x0D;
    }
    break;
  case 0x05
    if(hasScript(target, "dexdown"))
    {
      Q4E6 = 0x0F;
    }
    break;
  case 0x06
    if(hasScript(target, "intdown"))
    {
      Q4E6 = 0x0F;
    }
    break;
  case 0x07
    if(hasScript(target, "strdown"))
    {
      Q4E6 = 0x0F;
    }
    break;
  case 0x0B
    if(hasScript(target, "rempara"))
    {
      Q4E6 = 0x0C;
    }
    break;
  case 0x11
    if(hasScript(this, "reflctor"))
    {
      Q4E6 = 0x12;
    }
    break;
  case 0x14
    if(hasScript(this, "remprtct"))
    {
      Q4E6 = 0x19;
    }
    break;
  case 0x15
    if(hasScript(this, "strup"))
    {
      Q4E6 = 0x19;
    }
    break;
  case 0x16
    if(hasScript(this, "intup"))
    {
      Q4E6 = 0x19;
    }
    break;
  case 0x17
    if(hasScript(this, "dexup"))
    {
      Q4E6 = 0x19;
    }
    break;
  default
    Q4E6 = 0x00;
  }
  return(Q4E6);
}

trigger callback(0x48)
{
  Q5LZ(this, 0x2D, 0x06, 0x0C);
  return(0x01);
}

trigger callback(0x2D)
{
  Q4O9(this);
  return(0x01);
}