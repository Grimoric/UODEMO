// Real-C
#include "ENGINE.hpp"

#include "globals.h"

MEMBER obj subject;
MEMBER int bounty;
MEMBER int Q454;
MEMBER string Q5XI;
MEMBER list Q5XH;

TRIGGER( decay )(int oldvalue, int newvalue)
{
  return(0x00);
}

FUNCTION void Q5M1()
{
  callbackAdvanced(this, 0x004F1A00, 0x01, 0x00);
  return;
}

FUNCTION void Q66G()
{
  if(!Q454)
  {
    return;
  }
  list args = list( subject, bounty, Q5XI );
  if(numInList(Q5XH) > 0x00)
  {
    appendToList(args, Q5XH);
  }
  messageToRange(getMasterObjLoc(0x00), 0x01, "updateBounty", args);
  return;
}

TRIGGER( lookedat )(obj looker)
{
  if(!isEditing(looker))
  {
    return(0x00);
  }
  string Q452 = "(active)";
  if(!Q454)
  {
    Q452 = "(inactive)";
  }
  string Q520 = "???";
  if(numInList(Q5XH) > 0x00)
  {
    int Q523 = Q5XH[0x00];
    Q520 = Q523;
  }
  barkTo(this, looker, "Bounty for " + Q5XI + " (" + objtoint(subject) + ") with " + Q520 + " kills and " + bounty + " gold. " + Q452);
  return(0x00);
}

TRIGGER( creation )()
{
  subject = getObjVar(this, "subject");
  removeObjVar(this, "subject");
  return(0x01);
}

TRIGGER( destroyed )()
{
  if(subject == NULL())
  {
    return(0x01);
  }
  Q66G();
  return(0x01);
}

FUNCTION void Q5QV(obj recipient)
{
  list args = list( subject, bounty, Q5XI );
  bark(this, "messaging via probe to (" + objtoint(recipient) + ").");
  Q56V(recipient, "bountyInfo", args);
  return;
}

TRIGGER( message , "setBountyActivity" )(obj sender, list args)
{
  if(subject != oprlist(args, 0x00))
  {
    return(0x01);
  }
  Q454 = oprlist(args, 0x01);
  Q5M1();
  Q66G();
  return(0x01);
}

TRIGGER( message , "addBounty" )(obj sender, list args)
{
  debugMessage("addBounty args=");
  printList(args);
  if(subject != oprlist(args, 0x00))
  {
    return(0x01);
  }
  bounty = bounty + oprlist(args, 0x01);
  if(args[0x02])
  {
    Q454 = 0x01;
  }
  if(Q5XI == "")
  {
    Q5XI = args[0x03];
  }
  if(numInList(Q5XH) == 0x00)
  {
    if(numInList(args) > 0x04)
    {
      copyList(Q5XH, args[0x04]);
    }
  }
  Q5M1();
  return(0x00);
}

TRIGGER( message , "updateBountyDesc" )(obj sender, list args)
{
  if(subject != oprlist(args, 0x00))
  {
    return(0x01);
  }
  removeItem(args, 0x00);
  Q5XH = list( args );
  Q454 = 0x01;
  Q66G();
  return(0x01);
}

TRIGGER( message , "consolidateBounty" )(obj sender, list args)
{
  if(this == sender)
  {
    return(0x01);
  }
  if(subject != oprlist(args, 0x00))
  {
    return(0x01);
  }
  args = list( subject, bounty, Q454, "", Q5XH );
  message(sender, "addBounty", args);
  setDefaultReturn(0x01);
  subject = NULL();
  deleteObjectNoFall(this);
  return(0x01);
}

TRIGGER( message , "takeBounty" )(obj sender, list args)
{
  if(!Q454)
  {
    return(0x01);
  }
  if(subject != oprlist(args, 0x00))
  {
    return(0x01);
  }
  bark(this, "(" + objtoint(args[0x01]) + ") is collecting this bounty for " + Q5XI);
  Q5QV(args[0x01]);
  setDefaultReturn(0x01);
  bounty = 0x00;
  deleteObjectNoFall(this);
  return(0x00);
}

FUNCTION void teleported()
{
  list args = list( subject );
  messageToRange(getLocation(this), 0x01, "consolidateBounty", args);
  Q66G();
  callback(this, random(0x0E10, 0x0FA0), 0x2F);
  return;
}

TRIGGER( message , "teleported" )(obj sender, list args)
{
  teleported();
  return(0x00);
}

TRIGGER( serverswitch )()
{
  teleported();
  return(0x00);
}

TRIGGER( callback , 0x2F )()
{
  Q66G();
  callback(this, random(0x0E10, 0x0FA0), 0x2F);
  return(0x01);
}

TRIGGER( objectloaded )()
{
  callback(this, 0x01, 0x2F);
  return(0x00);
}