// Real-C
#include "ENGINE.hpp"

#include "sk_table.h"

TRIGGER( message , "canUseSkill" )(obj sender, list args)
{
  return(0x00);
}

TRIGGER( callback , 0x4D )()
{
  detachScript(this, "begging");
  return(0x00);
}

TRIGGER( message , "useSkill" )(obj sender, list args)
{
  callback(this, 0x0A, 0x4D);
  systemMessage(this, "To whom do you wish to grovel?");
  targetObj(this, this);
  if(!getCompileFlag(0x01))
  {
    if(getNotorietyLevel(this) > (0x00 - 0x01))
    {
      removeNotoriety(this, 0x01);
    }
  }
  else
  {
    if(getKarmaLevel(this) > 0x01)
    {
      changeKarma(this, (0x00 - 0x0960));
    }
  }
  return(0x00);
}

TRIGGER( targetobj )(obj user, obj usedon)
{
  if(usedon == NULL())
  {
    return(0x00);
  }
  if(!isNPC(usedon))
  {
    if(isPlayer(usedon))
    {
      barkTo(usedon, user, "Perhaps just asking would work better.");
    }
    else
    {
      barkTo(usedon, user, "There is little chance of getting money from that!");
    }
    return(0x00);
  }
  if(!isHuman(usedon))
  {
    barkTo(usedon, user, "There is little chance of getting money from that!");
    return(0x00);
  }
  loc Q4VS = loc( getLocation(user) );
  loc there = loc( getLocation(usedon) );
  if(getDistanceInTiles(Q4VS, there) > 0x04)
  {
    int Q66P = getObjType(usedon);
    if(Q66P == 0x0190)
    {
      systemMessage(this, "You are too far away to beg from him.");
    }
    if(Q66P == 0x0191)
    {
      systemMessage(this, "You are too far away to beg from her.");
    }
    if((Q66P != 0x0190) && (Q66P != 0x0190))
    {
      systemMessage(this, "That's too far away.  You couldn't beg from it anyway.");
    }
    return(0x00);
  }
  if(!skillTest(user, 0x06))
  {
    barkTo(usedon, user, "They seem unwilling to give you any money.");
    return(0x00);
  }
  handleWatchingSkill(user, 0x06);
  setObjVar(usedon, "beggingVictim", usedon);
  setObjVar(usedon, "beggingBeggar", user);
  attachScript(usedon, "beggingpathfind");
  bark(usedon, "I feel sorry for thee...");
  walkTo(usedon, getLocation(user), 0x12);
  return(0x00);
}