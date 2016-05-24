// Real-C
#include "ENGINE.hpp"

#include "sndfx.h"

TRIGGER( message , "canUseSkill" )(obj sender, list args)
{
  return(0x00);
}

TRIGGER( callback , 0x4D )()
{
  detachScript(this, "taste");
  return(0x00);
}

TRIGGER( message , "useSkill" )(obj sender, list args)
{
  callback(this, 0x0A, 0x4D);
  systemMessage(this, "What would you like to taste?");
  targetObj(this, this);
  return(0x00);
}

TRIGGER( targetobj )(obj user, obj usedon)
{
  if(usedon == NULL())
  {
    return(0x00);
  }
  int food = 0x00;
  int drink = 0x00;
  int Q45S = 0x00;
  int Q5YW = 0x00;
  int potion = 0x00;
  loc Q4VS = loc( getLocation(user) );
  loc there = loc( getLocation(usedon) );
  if(getDistanceInTiles(Q4VS, there) > 0x01)
  {
    systemMessage(user, "You are too far away to do that.");
    return(0x00);
  }
  if(isMobile(usedon))
  {
    barkTo(usedon, user, "That's not something you can taste.");
    return(0x00);
  }
  int Q62N = getObjType(usedon);
  switch(Q62N)
  {
  case 0x0F06:
  case 0x0F07:
  case 0x0F08:
  case 0x0F09:
  case 0x0F0A:
  case 0x0F0B:
  case 0x0F0C:
  case 0x0F0D:
    Q5YW = 0x01;
    potion = 0x01;
    break;
  default:
    Q5YW = 0x00;
    break;
  }
  if(hasObjVar(usedon, "I_am_food"))
  {
    food = getObjVar(usedon, "I_am_food");
    if(food == 0x01)
    {
      Q5YW = 0x01;
    }
  }
  if(hasObjVar(usedon, "I_am_alcohol"))
  {
    Q45S = getObjVar(usedon, "I_am_alcohol");
    if(Q45S == 0x01)
    {
      Q5YW = 0x01;
    }
  }
  if(hasObjVar(usedon, "I_am_potable"))
  {
    drink = getObjVar(usedon, "I_am_potable");
    if(drink == 0x01)
    {
      Q5YW = 0x01;
    }
  }
  if(Q5YW == 0x00)
  {
    barkTo(usedon, user, "That's not something you can taste.");
    return(0x00);
  }
  int skill = getSkillLevelReal(user, 0x24);
  int Q4AY = random(0x01, 0x03E8);
  if(Q5YW == 0x01)
  {
    if(testSkill(user, 0x24))
    {
      sfx(getLocation(user), 0x30, 0x00);
      if(potion)
      {
        int Q5K2 = getObjType(usedon);
        switch(Q5K2)
        {
        case 0x0F0B:
          barkTo(usedon, user, "This potion may have been made from black pearl.");
          break;
        case 0x0F08:
          barkTo(usedon, user, "This potion may have been made from bloodmoss.");
          break;
        case 0x0F06:
          barkTo(usedon, user, "This potion may have been made from garlic.")/* semicolon added by the decompiler post-processor */;
          break;
        case 0x0F0C:
          barkTo(usedon, user, "This potion may have been made from ginseng.");
          break;
        case 0x0F09:
          barkTo(usedon, user, "This potion may have been made from mandrake.");
          break;
        case 0x0F0A:
          barkTo(usedon, user, "You sense a hint of foulness about " + getName(usedon) + ".");
          barkTo(usedon, user, "This potion may have been made from nightshade.");
          break;
        case 0x0F07:
          barkTo(usedon, user, "This potion may have been made from spider silk.");
          break;
        case 0x0F0D:
          barkTo(usedon, user, "This potion may have been made from sulfurous ash.");
          break;
        default:
          barkTo(usedon, user, "This potion's ingredients are unknown to you.");
          break;
        }
        return(0x00);
      }
      if(hasScript(usedon, "poisfood"))
      {
        barkTo(usedon, user, "You sense a hint of foulness about " + getName(usedon) + ".");
        return(0x00);
      }
      barkTo(usedon, user, "There is nothing unusual about " + getName(usedon) + ".");
      return(0x00);
    }
    else
    {
      barkTo(usedon, user, "You cannot discern anything about this substance.");
      return(0x00);
    }
  }
  return(0x00);
}