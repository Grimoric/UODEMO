// Real-C
#include "ENGINE.hpp"

FORWARD string guildName();
FORWARD string Q4UL();
FORWARD string myGuildTitle();
FORWARD void Q4TI(obj this);
FORWARD void cleanup(obj this);

MEMBER obj me;

TRIGGER( lookedat )(obj looker)
{
  string ab = getObjVar(this, "guildAbbreviation");
  if(ab == "none")
  {
    ab = guildName();
  }
  if(hasObjVar(this, "displayGuildAbbr"))
  {
    barkTo(this, looker, "[" + ab + "]");
  }
  return(0x01);
}

TRIGGER( objectloaded )()
{
  Q4TI(this);
  return(0x01);
}

FUNCTION string guildName()
{
  if(!hasObjVar(me, "guildName"))
  {
    cleanup(me);
  }
  string x = getObjVar(me, "guildName");
  return(x);
}

FUNCTION string Q4UL()
{
  if(!hasObjVar(me, "guildAbbreviation"))
  {
    cleanup(me);
  }
  string x = getObjVar(me, "guildAbbreviation");
  return(x);
}

FUNCTION string myGuildTitle()
{
  if(!hasObjVar(me, "myGuildTitle"))
  {
    cleanup(me);
  }
  string x = getObjVar(me, "myGuildTitle");
  return(x);
}

TRIGGER( creation )()
{
  me = this;
  setObjVar(this, "guildName", "unaffiliated");
  setObjVar(this, "guildAbbreviation", "none");
  setObjVar(this, "myGuildTitle", "");
  Q4TI(this);
  return(0x01);
}

FUNCTION void Q4TI(obj this)
{
  if(!hasObjVar(this, "guildstoneId"))
  {
    cleanup(me);
    return;
  }
  obj Q4UE = getObjVar(this, "guildstoneId");
  list blah;
  multimessage(Q4UE, "updateMyGuildInfo", blah);
  return;
}

TRIGGER( message , "updateGuildInfo" )(obj sender, list args)
{
  int Q4ZH = args[0x00];
  string Q43M = args[0x01];
  string Q43L = args[0x02];
  string Q43O = args[0x03];
  if(Q43M != guildName())
  {
    systemMessage(this, "The name of your guild has changed from " + guildName() + " to " + Q43M + ".");
    setObjVar(this, "guildName", Q43M);
  }
  if(Q43L != Q4UL())
  {
    systemMessage(this, "Your guild abbreviation has changed from " + Q4UL() + " to " + Q43L + ".");
    setObjVar(this, "guildAbbreviation", Q43L);
  }
  if(Q43O != myGuildTitle())
  {
    systemMessage(this, "You have been given a new guild title: " + Q43O + ".");
    setObjVar(this, "myGuildTitle", Q43O);
  }
  if(!Q4ZH)
  {
    systemMessage(this, "You have been dismissed from " + guildName() + ".");
    cleanup(this);
  }
  return(0x01);
}

FUNCTION void cleanup(obj this)
{
  removeObjVar(this, "guildName");
  removeObjVar(this, "guildAbbreviation");
  removeObjVar(this, "myGuildTitle");
  removeObjVar(this, "guildstoneId");
  removeObjVar(this, "displayGuildAbbr");
  detachScript(this, "guilded");
  return;
}

TRIGGER( message , "removedFromGuild" )(obj sender, list args)
{
  cleanup(this);
  return(0x01);
}

TRIGGER( message , "guildMessage" )(obj sender, list args)
{
  string Q65L = args[0x00];
  systemMessage(this, "Guild message: " + Q65L);
  return(0x01);
}

TRIGGER( message , "globalGuildMessage" )(obj sender, list args)
{
  string Q65L = args[0x00];
  systemMessage(this, "Guild message: " + Q65L);
  return(0x01);
}