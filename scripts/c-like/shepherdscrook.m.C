// Real-C
#include "ENGINE.hpp"

#include "sk_table.h"

MEMBER int Q46A;
MEMBER obj animal;

TRIGGER( use )(obj user)
{
  systemMessage(user, "Target the animal you wish to herd.");
  Q46A = 0x00;
  targetObj(user, this);
  return(0x00);
}

TRIGGER( targetobj )(obj user, obj usedon)
{
  if(usedon == NULL())
  {
    return(0x00);
  }
  if(!canSeeObj(user, usedon))
  {
    systemMessage(user, "Target can not be seen.");
    return(0x00);
  }
  if(hasScript(usedon, "beingtamed"))
  {
    ebarkTo(usedon, user, "Someone else is already taming this.");
    return(0x00);
  }
  if(hasObjListVar(usedon, "myBoss"))
  {
    ebarkTo(usedon, user, "That animal looks tame already.");
    return(0x00);
  }
  if(isMobile(usedon))
  {
    if(!hasObjVar(usedon, "petCanTame"))
    {
      ebarkTo(usedon, user, "That being can not be tamed.");
    }
    int Q4AD = getObjVar(usedon, "petCanTame");
    int success = testAndLearnSkill(user, 0x14, 0x08 * Q4AD, 0x32);
    if(success >= 0x03E8)
    {
      ebarkTo(usedon, user, "That wasn't even challenging.");
    }
    if(success < 0x00)
    {
      systemMessage(user, "You don't seem to be able to persuade that to move.");
      return(0x00);
    }
    if(Q46A)
    {
      if(usedon == user)
      {
        systemMessage(user, "The animal begins to follow you.");
        Q46A = 0x00;
        followNpc(animal, usedon, 0x00);
      }
    }
    else
    {
      if(!isHuman(usedon) && (hasObjVar(usedon, "petCanTame")))
      {
        Q46A = 0x01;
        animal = usedon;
        targetLoc(user, this);
        systemMessage(user, "Click whom you wish the animal to follow, or where you wish it to go.");
        return(0x00);
        break;
      }
      systemMessage(user, "That is not a herdable animal.");
    }
  }
  return(0x00);
}

TRIGGER( targetloc )(obj user, loc place, int objtype)
{
  if(!isInMap(place))
  {
    return(0x00);
  }
  if(!canSeeLoc(user, place))
  {
    systemMessage(user, "Target can not be seen.");
    return(0x00);
  }
  if(Q46A)
  {
    stopFollowing(animal);
    Q46A = 0x00;
    systemMessage(user, "The animal walks where it was instructed to.");
    walkTo(animal, place, 0x00);
  }
  return(0x00);
}

TRIGGER( pathfound , 0x00 )()
{
  attachScript(this, "herdedanimal");
  callback(this, 0x64, 0x3F);
  return(0x00);
}