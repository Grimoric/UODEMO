// Real-C
#include "ENGINE.hpp"

#include "nrgyvrtxbase.h"

MEMBER list Q67L;
MEMBER list Q67K;
MEMBER list Q5CD;
MEMBER list Q5CC;
MEMBER obj Q67S;
MEMBER int Q4G9;
MEMBER obj trackee;

FORWARD void Q5YK();
FORWARD void Q4TV(obj victim);
FORWARD void Q4GJ(obj victim, int damage);
FORWARD void Q5GP();
FORWARD void Q4DH(int Q68Q);
FORWARD void Q4BQ();

TRIGGER( creation )()
{
  if(random(0x00, 0x01F4) == 0x2A)
  {
    setType(this, 0xDC);
  }
  Q67S = this;
  loc Q4VS = loc( getLocation(Q67S) );
  setMaxFatigue(Q67S, 0x03E7);
  setCurFatigue(Q67S, 0x03E7);
  enableBehaviors(Q67S);
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
    callback(Q67S, 0x05, 0x2F);
    Q5YK();
  }
  else
  {
    callback(Q67S, 0x05, 0x2F);
    shortcallback(Q67S, 0x01, 0x35);
  }
  return(0x00);
}

FUNCTION void Q4DH(int Q68Q)
{
  if(Q68Q == 0x00)
  {
    if(0x00 < numInList(Q67L))
    {
      for(int Q629 = 0x00; Q629 < numInList(Q67L); Q629 ++)
      {
        int Q61S = getObjType(Q67L[Q629]);
        if(Q61S == 0x0335)
        {
          removeItem(Q67L, Q629);
          removeItem(Q67K, Q629);
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
        Q61S = getObjType(Q5CD[Q629]);
        if(Q61S == 0x0335)
        {
          removeItem(Q5CD, Q629);
          removeItem(Q5CC, Q629);
        }
      }
    }
  }
  return;
}

FUNCTION void Q5YK()
{
  loc Q4VS = loc( getLocation(Q67S) );
  int Q4IK;
  loc there;
  Q4BQ();
  if(0x00 == numInList(Q67L))
  {
    shortcallback(Q67S, 0x01, 0x35);
  }
  for(int Q629 = 0x00; Q629 < numInList(Q67L); Q629 ++)
  {
    if(isValid(Q67L[Q629]))
    {
      there = loc( getLocation(Q67L[Q629]) );
      Q4IK = getDistanceInTiles(Q4VS, there);
      if(Q4IK == 0x00)
      {
        Q4IK = 0x01;
      }
      int intelligence = getIntelligence(Q67L[Q629]);
      int skill = getSkillLevel(Q67L[Q629], 0x19);
      int Q5XO = (intelligence + skill) / Q4IK;
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
            loc Q5JP = loc( getLocation(Q67L[Q4CW]) );
            loc Q5JQ = loc( getLocation(Q67L[Q5D4]) );
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
  return;
}

FUNCTION void Q4TV(obj victim)
{
  loc Q4VS = loc( getLocation(Q67S) );
  loc there = loc( getLocation(victim) );
  trackee = victim;
  int Q5R6 = getDistanceInTiles(Q4VS, there);
  if(Q5R6 < 0x01)
  {
    Q5R6 = 0x01;
    Q4GJ(victim, 0x1E);
  }
  else
  {
    walkTo(Q67S, there, 0x0E);
    shortcallback(Q67S, Q5R6, 0x34);
  }
  return;
}

FUNCTION void Q4GJ(obj victim, int damage)
{
  loc Q4VS = loc( getLocation(Q67S) );
  sfx(Q4VS, 0x28, 0x00);
  if(!Q50G(victim))
  {
    return;
  }
  doDamageType(Q67S, victim, damage, 0x02);
  int Q5VZ = 0x00 - 0x0A;
  int Q4NC = 0xB4;
  for(int s = 0x00; s < 0x03; s ++)
  {
    int Q5NC = Q41Q(victim, s, Q5VZ, Q4NC);
  }
  return;
}

FUNCTION void Q4BQ()
{
  for(int Q629 = 0x00; Q629 < numInList(Q67L); Q629 ++)
  {
    int Q4XM = getObjType(Q67L[Q629]);
    if((Q4XM == 0x0192) || (Q4XM == 0x0193))
    {
      removeItem(Q67L, Q629);
      removeItem(Q67K, Q629);
    }
  }
  return;
}

TRIGGER( callback , 0x34 )()
{
  loc Q4VS = loc( getLocation(Q67S) );
  loc there = loc( getLocation(trackee) );
  int Q5R6 = getDistanceInTiles(Q4VS, there);
  if(Q5R6 <= 0x01)
  {
    Q4GJ(trackee, 0x0C);
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
      walkTo(Q67S, there, 0x0E);
      shortcallback(Q67S, Q5R6, 0x34);
      return(0x00);
    }
    if(numInList(Q67L) < 0x01)
    {
      shortcallback(Q67S, Q5R6, 0x35);
      return(0x00);
    }
    Q5YK();
  }
  return(0x00);
}

TRIGGER( callback , 0x35 )()
{
  loc Q4VS = loc( getLocation(Q67S) );
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
    callback(Q67S, 0x02, 0x35);
  }
  return(0x00);
}

TRIGGER( enterrange , 0x04 )(obj target)
{
  if(!(isInList(Q67L, target)))
  {
    appendToList(Q67L, target);
    appendToList(Q67K, 0x00);
  }
  Q5YK();
  return(0x01);
}

TRIGGER( enterrange , 0x00 )(obj target)
{
  Q4GJ(target, 0x1E);
  Q5YK();
  return(0x01);
}

TRIGGER( callback , 0x2F )()
{
  loc Q4VS = loc( getLocation(Q67S) );
  sfx(Q4VS, 0x15, 0x00);
  shortcallback(Q67S, 0x03, 0x2F);
  return(0x00);
}