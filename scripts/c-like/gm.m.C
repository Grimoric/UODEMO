// Real-C
#include "ENGINE.hpp"

#include "human.h"

TRIGGER( objectloaded )()
{
  callBack(this, 0x64, 0x60);
  return(0x01);
}

TRIGGER( creation )()
{
  int Q608;
  MEMBER string guildName;
  MEMBER int Q59L;
  loc Q4VS = loc( getLocation(this) );
  setObjVar(this, "myGuildLocation", Q4VS);
  setLoiterMode(this, 0x01);
  goLoiter(this, Q4VS, 0x03E8);
  callBack(this, 0x64, 0x60);
  setBehavior(this, 0x02);
  if(hasObjVar(this, "guildMember"))
  {
    Q608 = getObjVar(this, "guildMember");
  }
  if(!Q608)
  {
    setObjVar(this, "guildMember", 0x00);
  }
  Q59L = Q608;
  switch(Q608)
  {
  case 0x00:
    guildName = "Default Guild of Superheroic Non-Player Characters";
    break;
  case 0x01:
    guildName = "Guild of Arcane Arts";
    break;
  case 0x02:
    guildName = "Warrior's Guild";
    break;
  case 0x03:
    guildName = "Society of Thieves";
    break;
  case 0x04:
    guildName = "League of Rangers";
    break;
  case 0x05:
    guildName = "Guild of Healers";
    break;
  case 0x06:
    guildName = "Mining Cooperative";
    break;
  case 0x07:
    guildName = "Merchants' Association";
    break;
  case 0x08:
    guildName = "Order of Engineers";
    break;
  case 0x09:
    guildName = "Society of Clothiers";
    break;
  case 0x0A:
    guildName = "Maritime Guild";
    break;
  case 0x0B:
    guildName = "Bardic Collegium";
    break;
  default:
    guildName = "Default Guild of Superheroic Non-Player Characters";
    break;
  }
  return(0x00);
}

TRIGGER( callback , 0x60 )()
{
  if(hasObjVar(this, "myGuildLocation"))
  {
    loc there = loc( getObjVar(this, "myGuildLocation") );
    if(getDistanceInTiles(getLocation(this), there) > 0x0A)
    {
      int Q4EL = teleport(this, there);
    }
  }
  callBack(this, 0x64, 0x60);
  return(0x01);
}

TRIGGER( pathnotfound , 0x06 )()
{
  if(!hasObjVar(this, "myGuildLocation"))
  {
    return(0x00);
  }
  loc place = loc( getObjVar(this, "myGuildLocation") );
  int Q4Q1 = teleport(this, place);
  return(0x00);
}

TRIGGER( speech , "*" )(obj speaker, string arg)
{
  string Q618;
  list args;
  int Q608;
  string Q58D;
  if(!Q4J8(this, speaker, arg))
  {
    return(0x01);
  }
  split(args, arg);
  for(int i = 0x00; i < numInList(args); i ++)
  {
    Q618 = args[i];
    if(Q618 == "join" || (Q618 == "member"))
    {
      if(hasObjVar(speaker, "guildMember"))
      {
        Q608 = getObjVar(speaker, "guildMember");
        if(Q608 != Q59L)
        {
          bark(this, "Thou must resign from thy other guild first.");
          return(0x00);
        }
        bark(this, "Thou art already a member of our guild.");
        return(0x00);
      }
      bark(this, "The fee for joining a guild is 500 gold coins.");
      setObjVar(speaker, "guildAskedToJoin", this);
      return(0x00);
    }
    if(Q618 == "resign" || (Q618 == "quit"))
    {
      if(hasObjVar(speaker, "guildMember"))
      {
        Q608 = getObjVar(speaker, "guildMember");
        if(Q608 != Q59L)
        {
          bark(this, "Thou dost not belong to my guild!");
          return(0x00);
        }
        bark(this, "I accept thy resignation.");
        removeObjVar(speaker, "guildMember");
        return(0x00);
      }
    }
    if(Q618 == "guild" || (Q618 == "guilds"))
    {
      Q58D = "I am a Guildmaster of the " + guildName + ". Art thou interested in joining?"/* ) */;
      bark(this, Q58D);
      return(0x00);
    }
  }
  return(0x01);
}

TRIGGER( give )(obj giver, obj givenobj)
{
  int Q608;
  if(hasObjVar(giver, "guildAskedToJoin"))
  {
    obj Q68T = getObjVar(giver, "guildAskedToJoin");
    if(Q68T != this)
    {
      return(0x01);
    }
    int value;
    int Q4Q1;
    Q4Q1 = getResource(value, givenobj, "gold", 0x03, 0x02);
    if(!Q4Q1)
    {
      return(0x01);
    }
    if(value != 0x01F4)
    {
      return(0x01);
    }
    Q4Q1 = putObjContainer(givenobj, this);
    deleteObject(givenobj);
    string Q58D = "Welcome to the " + guildName + "!";
    Q608 = getObjVar(this, "guildMember");
    if(Q608 == 0x03)
    {
      Q58D = Q58D + " Fellow thieves and beggars shall not bother thee now.";
    }
    else
    {
      Q58D = Q58D + " Thou shalt find that fellow members shall grant thee lower prices in shops.";
    }
    bark(this, Q58D);
    setObjVar(giver, "guildMember", Q608);
    return(0x00);
  }
  return(0x01);
}