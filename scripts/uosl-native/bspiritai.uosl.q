// UOSL (native)
inherits bldsprtsbase;

member list Q67L;
member list Q67K;
member list Q5CD;
member list Q5CC;
member int Q4G9;
member obj trackee;

forward void Q5YK();
forward void Q4TV(obj victim);
forward void Q4GJ(obj victim, int damage);
forward void Q5GP();
forward void Q4DH(int Q68Q);
forward void Q4BQ();

trigger creation
{
  loc Q4VS = getLocation(this);
  sfx(Q4VS, 0x0212, 0x00);
  setMaxFatigue(this, 0x03E7);
  setCurFatigue(this, 0x03E7);
  enableBehaviors(this);
  getMobsInRange(Q67L, Q4VS, 0x06);
  for(int Q5GY; Q5GY < numInList(Q67L); Q5GY ++)
  {
    setItem(Q67K, 0x01, Q5GY);
  }
  Q4BQ();
  int Q68Q = 0x00;
  Q4DH(Q68Q);
  if(0x00 < numInList(Q67L))
  {
    shortcallback(this, 0x03, 0x2F);
    Q5YK();
  }
  else
  {
    shortcallback(this, 0x03, 0x2F);
    shortcallback(this, 0x01, 0x35);
  }
  return(0x00);
}

function void Q4DH(int Q68Q)
{
  if(Q68Q == 0x00)
  {
    if(0x00 < numInList(Q67L))
    {
      for(int Q629 = 0x00; Q629 < numInList(Q67L); Q629 ++)
      {
        int Q61S = getObjType(Q67L[Q629]);
        if(isValid(Q67L[Q629]))
        {
          if(Q61S == 0x0336)
          {
            removeItem(Q67L, Q629);
            removeItem(Q67K, Q629);
          }
        }
      }
    }
  }
  else
  {
    if(0x00 < numInList(Q5CD))
    {
      for(Q629 = 0x00; Q629 < numInList(Q5CD); Q629 ++)
      {
        if(!isValid(Q67L[Q629]))
        {
          Q61S = getObjType(Q5CD[Q629]);
          if(Q61S == 0x0336)
          {
            removeItem(Q5CD, Q629);
            removeItem(Q5CC, Q629);
          }
        }
      }
    }
  }
  return();
}

function void Q5YK()
{
  loc Q4VS = getLocation(this);
  int Q4IK;
  loc there;
  Q4BQ();
  if(0x00 == numInList(Q67L))
  {
    shortcallback(this, 0x01, 0x35);
  }
  for(int Q629 = 0x00; Q629 < numInList(Q67L); Q629 ++)
  {
    if(isValid(Q67L[Q629]))
    {
      there = getLocation(Q67L[Q629]);
      Q4IK = getDistanceInTiles(Q4VS, there);
      if(Q4IK == 0x00)
      {
        Q4IK = 0x01;
      }
      int strength = getStrength(Q67L[Q629]);
      int skill = (getSkillLevel(Q67L[Q629], 0x1B) + getSkillLevel(Q67L[Q629], 0x1F));
      int Q5XO = (strength + skill) / Q4IK;
      setItem(Q67K, Q5XO, Q629);
    }
    else
    {
      removeItem(Q67K, Q629);
      removeItem(Q67L, Q629);
    }
  }
  obj Q5KH;
  int Q5KI;
  int Q5KG;
  int Q5KF;
  obj Q5D6;
  int Q5D7;
  int Q5D5;
  int Q5D1 = numInList(Q67K);
  string Q5BB = Q5D1;
  for(int Q4CW; Q4CW < numInList(Q67K); Q4CW ++)
  {
    for(int Q5D4 = 0x00; Q5D4 < Q5D1; Q5D4 ++)
    {
      if(Q4CW < Q5D4)
      {
        if((Q67K[Q4CW]) < (Q67K[Q5D4]))
        {
          if(isValid(Q67L[Q4CW]))
          {
            Q5KI = Q67K[Q4CW];
            Q5KH = Q67L[Q4CW];
            Q5D7 = Q67K[Q5D4];
            Q5D6 = Q67L[Q5D4];
            setItem(Q67K, Q5D7, Q4CW);
            setItem(Q67L, Q5D6, Q4CW);
            setItem(Q67K, Q5KI, Q5D4);
            setItem(Q67L, Q5KH, Q5D4);
          }
        }
        if((Q67K[Q4CW]) == (Q67K[Q5D4]))
        {
          if(isValid(Q67L[Q4CW]))
          {
            loc Q5JP = getLocation(Q67L[Q4CW]);
            loc Q5JQ = getLocation(Q67L[Q5D4]);
            int Q4IM = getDistance(Q4VS, Q5JP);
            int Q4IN = getDistance(Q4VS, Q5JQ);
            if(Q4IM > Q4IN)
            {
              Q5KI = Q67K[Q4CW];
              Q5KH = Q67L[Q4CW];
              Q5D7 = Q67K[Q5D4];
              Q5D6 = Q67L[Q5D4];
              setItem(Q67K, Q5D7, Q4CW);
              setItem(Q67L, Q5D6, Q4CW);
              setItem(Q67K, Q5KI, Q5D4);
              setItem(Q67L, Q5KH, Q5D4);
            }
          }
        }
      }
    }
  }
  Q4G9 = numInList(Q67L);
  obj Q455 = Q67L[0x00];
  Q4TV(Q455);
  return();
}

function void Q4TV(obj victim)
{
  loc Q4VS = getLocation(this);
  loc there = getLocation(victim);
  trackee = victim;
  int Q5R6 = getDistanceInTiles(Q4VS, there);
  if(Q5R6 < 0x01)
  {
    Q5R6 = 0x01;
    if(!isValid(victim))
    {
      return();
    }
    Q4GJ(victim, 0x14);
  }
  else
  {
    walkTo(this, there, 0x0F);
    shortcallback(this, Q5R6, 0x34);
  }
  return();
}

function void Q4GJ(obj victim, int damage)
{
  if(!isValid(victim))
  {
    return();
  }
  Q423(this, victim, damage, 0x01, 0x00);
  sfx(getLocation(this), 0x023B, 0x00);
  if(Q50G(victim))
  {
    attachScript(victim, "poisoned");
    setObjVar(victim, "poison_strength", 0x02);
  }
  return();
}

function void Q4BQ()
{
  for(int Q629 = 0x00; Q629 < numInList(Q67L); Q629 ++)
  {
    if(isValid(Q67L[Q629]))
    {
      int Q4XM = getObjType(Q67L[Q629]);
      if((Q4XM == 0x0192) || (Q4XM == 0x0193))
      {
        removeItem(Q67L, Q629);
        removeItem(Q67K, Q629);
      }
    }
  }
  return();
}

trigger callback(0x34)
{
  loc Q4VS = getLocation(this);
  loc there = getLocation(trackee);
  int Q5R6 = getDistanceInTiles(Q4VS, there);
  if(Q5R6 <= 0x01)
  {
    if(!isValid(trackee))
    {
      return(0x00);
    }
    Q4GJ(trackee, 0x07);
    Q5YK();
  }
  else
  {
    getMobsInRange(Q5CD, Q4VS, 0x06);
    for(int Q5GY; Q5GY < numInList(Q5CD); Q5GY ++)
    {
      setItem(Q5CC, 0x01, Q5GY);
    }
    int Q68Q = 0x01;
    Q4DH(Q68Q);
    if(0x00 < numInList(Q5CD))
    {
      for(int Q5CI; Q5CI < numInList(Q5CD); Q5CI ++)
      {
        int Q4XM = getObjType(Q5CD[Q5CI]);
        if((Q4XM == 0x0192) || (Q4XM == 0x0193))
        {
          removeItem(Q5CD, Q5CI);
          removeItem(Q5CC, Q5CI);
          return(0x00);
        }
        obj Q5C9 = Q5CD[Q5CI];
        if(isInList(Q67L, Q5C9))
        {
          removeItem(Q5CD, Q5CI);
          removeItem(Q5CC, Q5CI);
        }
        else
        {
          appendToList(Q67L, Q5C9);
          appendToList(Q67K, 0x01);
        }
      }
    }
    if(Q4G9 == numInList(Q67L))
    {
      walkTo(this, there, 0x0F);
      sfx(Q4VS, 0x023A, 0x00);
      shortcallback(this, Q5R6, 0x34);
      return(0x00);
    }
    if(numInList(Q67L) < 0x01)
    {
      sfx(Q4VS, 0x023A, 0x00);
      shortcallback(this, Q5R6, 0x35);
      return(0x00);
    }
    Q5YK();
  }
  sfx(Q4VS, 0x023A, 0x00);
  return(0x00);
}

trigger callback(0x35)
{
  loc Q4VS = getLocation(this);
  getMobsInRange(Q5CD, Q4VS, 0x06);
  for(int Q5GY; Q5GY < numInList(Q5CD); Q5GY ++)
  {
    setItem(Q5CC, 0x01, Q5GY);
  }
  int Q68Q = 0x01;
  Q4DH(Q68Q);
  if(0x00 < numInList(Q5CD))
  {
    for(int Q5CI; Q5CI < numInList(Q5CD); Q5CI ++)
    {
      int Q4XM = getObjType(Q5CD[Q5CI]);
      if((Q4XM == 0x0192) || (Q4XM == 0x0193))
      {
        removeItem(Q5CD, Q5CI);
        removeItem(Q5CC, Q5CI);
        return(0x00);
      }
      obj Q5C9 = Q5CD[Q5CI];
      if(isInList(Q67L, Q5C9))
      {
        removeItem(Q5CD, Q5CI);
        removeItem(Q5CC, Q5CI);
      }
      else
      {
        appendToList(Q67L, Q5C9);
        appendToList(Q67K, 0x01);
      }
    }
    Q5YK();
  }
  else
  {
    shortcallback(this, 0x02, 0x35);
  }
  sfx(Q4VS, 0x023A, 0x00);
  return(0x00);
}

trigger enterrange(0x04)
{
  if(!(isInList(Q67L, target)))
  {
    appendToList(Q67L, target);
    appendToList(Q67K, 0x00);
  }
  Q5YK();
  return(0x01);
}

trigger enterrange(0x00)
{
  if(!isValid(target))
  {
    return(0x01);
  }
  Q4GJ(target, 0x14)
  Q5YK();
  return(0x01);
}

trigger callback(0x2F)
{
  loc Q4VS = getLocation(this);
  sfx(Q4VS, 0x023A, 0x00);
  shortcallback(this, 0x03, 0x2F);
  return(0x00);
}