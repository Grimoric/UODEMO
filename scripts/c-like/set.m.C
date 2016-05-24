// Real-C
#include "ENGINE.hpp"

#include "sk_table.h"

TRIGGER( enterrange , 0x00 )(obj target)
{
  int Q5YU = getZ(getLocation(target));
  int Q5AW = getZ(getLocation(this));
  int Q5AD = getHeight(this);
  int Q5AT = Q5AW + Q5AD;
  int Q45P = getPlayAge(target);
  int Q45O = Q45P * 0x08;
  if((Q5YU < Q5AW) || (Q5YU > Q5AT))
  {
    return(0x01);
  }
  if(hasObjVar(this, "playerOnly"))
  {
    if(!isPlayer(target))
    {
      return(0x00);
    }
  }
  if(!hasObjVar(this, "infiniteUse"))
  {
    if((hasObjVar(target, "usedAlready")) || (Q45O < 0xAA))
    {
      barkTo(this, target, "You have already used an advancement gate OR your character has not existed for at least three hours!");
      return(0x01);
    }
    setObjVar(target, "usedAlready", 0x01);
  }
  if(hasObjVar(this, "setTemplate"))
  {
    becomeTemplate(target, getObjVar(this, "setTemplate"));
  }
  if(hasObjVar(this, "clearSkills"))
  {
    for(int i = 0x00; i < 0x2E; i ++)
    {
      setSkillLevel(target, i, 0x00);
    }
  }
  for(i = 0x00; i < 0x2E; i ++)
  {
    string Q676 = "setSkill" + i;
    if(hasObjVar(this, Q676))
    {
      setSkillLevel(target, i, getObjVar(this, Q676));
    }
  }
  for(i = 0x00; i < 0x63; i ++)
  {
    Q676 = "putObject" + i;
    if(hasObjVar(this, Q676))
    {
      int Q60E = getObjVar(this, Q676);
      if(Q60E > 0x000186A0)
      {
        Q60E = Q60E - 0x000186A0;
        loc there = loc( getLocation(this) );
        obj Q49G = requestCreateNPCAt(Q60E, there, 0x32);
        if(Q49G != NULL())
        {
          int Q527 = putObjContainer(Q49G, getBackpack(target));
        }
      }
      else
      {
        obj Q4EL = requestCreateObjectIn(Q60E, getBackpack(target));
      }
    }
    else
    {
      break;
    }
  }
  int Q4Q1;
  if(hasObjVar(this, "setInt"))
  {
    Q4Q1 = setRealStat(target, 0x02, getObjVar(this, "setInt"));
  }
  if(hasObjVar(this, "setIntMod"))
  {
    Q4Q1 = setStatMod(target, 0x02, getObjVar(this, "setIntMod"));
  }
  if(hasObjVar(this, "setStr"))
  {
    Q4Q1 = setRealStat(target, 0x00, getObjVar(this, "setStr"));
  }
  if(hasObjVar(this, "setStrMod"))
  {
    Q4Q1 = setStatMod(target, 0x00, getObjVar(this, "setStrMod"));
  }
  if(hasObjVar(this, "setDex"))
  {
    Q4Q1 = setRealStat(target, 0x01, getObjVar(this, "setDex"));
  }
  if(hasObjVar(this, "setDexMod"))
  {
    Q4Q1 = setStatMod(target, 0x01, getObjVar(this, "setDexMod"));
  }
  if(hasObjVar(this, "setCurHP"))
  {
    setCurHP(target, getObjVar(this, "setCurHP"));
  }
  if(hasObjVar(this, "setMaxHP"))
  {
    setMaxHP(target, getObjVar(this, "setMaxHP"));
  }
  if(hasObjVar(this, "setCurFatigue"))
  {
    setCurFatigue(target, getObjVar(this, "setCurFatigue"));
  }
  if(hasObjVar(this, "setMaxFatigue"))
  {
    setMaxFatigue(target, getObjVar(this, "setMaxFatigue"));
  }
  if(hasObjVar(this, "setCurMana"))
  {
    setCurMana(target, getObjVar(this, "setCurMana"));
  }
  if(hasObjVar(this, "setMaxMana"))
  {
    setMaxMana(target, getObjVar(this, "setMaxMana"));
  }
  if(hasObjVar(this, "setNotoriety"))
  {
    setNotoriety(target, getObjVar(this, "setNotoriety"));
  }
  if(hasObjVar(this, "setFame"))
  {
    setFame(target, getObjVar(this, "setFame"));
  }
  if(hasObjVar(this, "setKarma"))
  {
    setKarma(target, getObjVar(this, "setKarma"));
  }
  if(hasObjVar(this, "setNaturalAC"))
  {
    setNaturalAC(target, getObjVar(this, "setNaturalAC"));
  }
  if(hasObjVar(this, "setMurderCount"))
  {
    setMurderCount(target, getObjVar(this, "setMurderCount"));
  }
  if(hasObjVar(this, "setHidden"))
  {
    setHidden(target, getObjVar(this, "setHidden"));
  }
  if(hasObjVar(this, "setInvisible"))
  {
    setInvisible(target, getObjVar(this, "setInvisible"));
  }
  if(hasObjVar(this, "setPoisoned"))
  {
    setPoisoned(target, getObjVar(this, "setPoisoned"));
  }
  if(hasObjVar(this, "setCursed"))
  {
    setCursed(target, getObjVar(this, "setCursed"));
  }
  if(hasObjVar(this, "setMovementType"))
  {
    setMovementType(target, getObjVar(this, "setMovementType"));
  }
  if(hasObjVar(this, "setMessage"))
  {
    systemMessage(target, getObjVar(this, "setMessage"));
  }
  if(hasObjVar(this, "setBark"))
  {
    bark(this, getObjVar(this, "setBark"));
  }
  doMobAnimation(target, 0x375A, 0x09, 0x0F, 0x00, 0x00);
  return(0x01);
}