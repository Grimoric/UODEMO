// Real-C
#include "ENGINE.hpp"

#include "globals.h"

FUNCTION void Q5LY(obj Q68S)
{
  int num = 0x00;
  if(hasObjVar(Q68S, "fixStats"))
  {
    num = getObjVar(Q68S, "fixStats");
  }
  num ++;
  setObjVar(Q68S, "fixStats", num);
  return;
}

FUNCTION int Q5ML(obj Q68S)
{
  int Q5W5;
  int Q5LU;
  int Q5W0;
  int Q5NC;
  int Q5NG = 0x00;
  for(int i = 0x00; i < 0x03; i ++)
  {
    Q5W5 = getStatMod(Q68S, i);
    if(Q5W5 != 0x00)
    {
      Q5NC = setStatMod(Q68S, i, 0x00);
      Q5NG = 0x01;
    }
    Q5LU = getRealStat(Q68S, i);
    Q5W0 = getStatAttributeMax(Q68S, i);
    if(Q5LU != Q5W0)
    {
      Q5NC = setStatAttributeMax(Q68S, i, Q5LU);
      Q5NG = 0x01;
    }
  }
  return(Q5NG);
}

FUNCTION int fixStats(obj Q68S)
{
  list Q4O3;
  loc Q5AH = loc( getLocation(Q68S) );
  int Q5TS;
  obj item;
  int Q5NC;
  int Q5NG;
  for(Q5TS = 0x01; Q5TS < 0x1A; Q5TS ++)
  {
    item = getItemAtSlot(Q68S, Q5TS);
    append(Q4O3, item);
    if(item != NULL())
    {
      Q5NC = teleport(item, Q5AH);
    }
  }
  Q5NG = Q5ML(Q68S);
  int Q52R = numInList(Q4O3) + 0x01;
  for(Q5TS = 0x01; Q5TS < Q52R; Q5TS ++)
  {
    item = Q4O3[Q5TS - 0x01];
    if(item != NULL())
    {
      Q5NC = equipObj(item, Q68S, Q5TS);
    }
  }
  setNaturalAC(Q68S, 0x00);
  return(Q5NG);
}

FUNCTION void Q4PM(obj it)
{
  if(fixStats(it))
  {
    bark(it, "Stat(s) fixed");
    Q5LY(it);
  }
  detachScript(it, "statfix");
  return;
}

FUNCTION int Q5ON(string Q5OQ)
{
  if(Q5OQ == "bounty")
  {
    return(0x01);
  }
  if(Q5OQ == "giftbag")
  {
    return(0x01);
  }
  if(Q5OQ == "statfix")
  {
    return(0x01);
  }
  if(Q5OQ == "amnesty3")
  {
    return(0x01);
  }
  if(Q5OQ == "amnesty4")
  {
    return(0x01);
  }
  if(Q5OQ == "guarded")
  {
    return(0x01);
  }
  if(Q5OQ == "counokay")
  {
    return(0x01);
  }
  if(Q5OQ == "info")
  {
    return(0x01);
  }
  return(0x00);
}

FUNCTION int Q5OP(obj it)
{
  list Q5OO;
  getScripts(Q5OO, it);
  int num = numInList(Q5OO);
  string Q5OQ;
  for(int i = 0x00; i < num; i ++)
  {
    Q5OQ = Q5OO[i];
    if(!Q5ON(Q5OQ))
    {
      return(0x00);
    }
  }
  return(0x01);
}

FUNCTION void Q4C9(obj it)
{
  if(Q5OP(it))
  {
    Q4PM(it);
  }
  else
  {
    callback(it, random(0x1E, 0x3C), 0x77);
  }
  return;
}

TRIGGER( creation )()
{
  Q4C9(this);
  return(0x01);
}

TRIGGER( callback , 0x77 )()
{
  Q4C9(this);
  return(0x01);
}