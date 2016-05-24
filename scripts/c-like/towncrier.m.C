// Real-C
#include "ENGINE.hpp"

#include "globals.h"

MEMBER obj gm;
MEMBER obj Q4F4;
MEMBER list Q63X;

TRIGGER( 400 , enterrange , 0x05 )(obj target)
{
  if(numInList(Q63X) < 0x01)
  {
    return(0x01);
  }
  string Q65L = Q63X[random(0x00, numInList(Q63X) - 0x01)];
  faceHere(this, getDirectionInternal(getLocation(this), getLocation(target)));
  bark(this, "Hear ye! Hear ye!");
  bark(this, Q65L);
  return(0x01);
}

TRIGGER( speech , "news" )(obj speaker, string arg)
{
  if(numInList(Q63X) < 0x01)
  {
    bark(this, "I have no news for thee at this time.");
    return(0x01);
  }
  string Q65L = Q63X[random(0x00, numInList(Q63X) - 0x01)];
  faceHere(this, getDirectionInternal(getLocation(this), getLocation(speaker)));
  bark(this, "Some of the latest news!");
  bark(this, Q65L);
  return(0x01);
}

FUNCTION void Q67N()
{
  string Q58D;
  string Q4IC;
  systemMessage(gm, "TOWN CRIER MESSAGES");
  for(int i = 0x00; i < numInList(Q63X); i ++)
  {
    Q4IC = i;
    Q58D = Q63X[i];
    systemMessage(gm, Q4IC + ": " + Q58D);
  }
  return;
}

TRIGGER( textentry , 0x26 )(obj sender, int button, string text)
{
  if(sender != gm)
  {
    return(0x00);
  }
  if(button == 0x00)
  {
    systemMessage(gm, "Message entry cancelled.");
    return(0x00);
  }
  string Q58D = "The text '" + text + "' has been added to this town crier.";
  systemMessage(gm, Q58D);
  appendToList(Q63X, text);
  return(0x00);
}

FUNCTION loc Q63Z()
{
  return(getMasterObjLoc(0x02));
}

TRIGGER( textentry , 0x25 )(obj sender, int button, string text)
{
  if(sender != gm)
  {
    return(0x00);
  }
  if(button == 0x00)
  {
    systemMessage(gm, "Message entry cancelled.");
    return(0x00);
  }
  string Q58D = "The text '" + text + "' has been added to town criers.";
  systemMessage(gm, Q58D);
  list Q638;
  appendToList(Q638, text);
  multiMessageToLoc(Q63Z(), "towncrieraddmessage", Q638);
  return(0x00);
}

TRIGGER( textentry , 0x27 )(obj sender, int button, string text)
{
  if(sender != gm)
  {
    return(0x00);
  }
  if(button == 0x00)
  {
    systemMessage(gm, "Message removal cancelled.");
    return(0x00);
  }
  int Q4Y2 = text;
  if((Q4Y2 < 0x00) || (Q4Y2 > numInList(Q63X) - 0x01))
  {
    systemMessage(gm, "You have entered an invalid index number.");
  }
  string Q58D = Q63X[Q4Y2];
  string Q61F = "Removing index #" + text + ", message text reading '" + Q58D + "' from all town criers."/* ) */;
  systemMessage(gm, Q61F);
  list args;
  appendToList(args, Q58D);
  multiMessageToLoc(Q63Z(), "towncrierremovemessage", args);
  return(0x00);
}

TRIGGER( message , "towncrieraddmessage" )(obj sender, list args)
{
  string text = args[0x00];
  appendToList(Q63X, text);
  return(0x00);
}

TRIGGER( message , "towncrierremovemessage" )(obj sender, list args)
{
  string text = args[0x00];
  removeSpecificItem(Q63X, text);
  return(0x00);
}

TRIGGER( use )(obj user)
{
  if(!isEditing(user))
  {
    return(0x01);
  }
  Q4F4 = this;
  gm = user;
  list Q56N;
  appendToList(Q56N, 0x00);
  appendToList(Q56N, "View current town crier messages.");
  appendToList(Q56N, 0x01);
  appendToList(Q56N, "Add a message to the town criers.");
  appendToList(Q56N, 0x02);
  appendToList(Q56N, "Delete a message from the town criers.");
  appendToList(Q56N, 0x03);
  appendToList(Q56N, "Add a message to this town crier ONLY.");
  selectType(gm, Q4F4, 0x3C, "TOWN CRIER CONTROL MENU", Q56N);
  return(0x00);
}

TRIGGER( typeselected , 0x3C )(obj user, int listindex, int objtype, int objhue)
{
  if(user != gm)
  {
    return(0x00);
  }
  if(listindex == 0x00)
  {
    barkTo(gm, gm, "Town crier update cancelled.");
    return(0x01);
  }
  switch(objtype)
  {
  case 0x00:
    Q67N();
    break;
  case 0x01:
    systemMessage(gm, "Type in the message you wish to add: ");
    textEntry(Q4F4, gm, 0x25, 0x00, "");
    return(0x00);
    break;
  case 0x02:
    systemMessage(gm, "Enter the number of the message you wish to remove: ");
    textEntry(Q4F4, gm, 0x27, 0x00, "");
    return(0x00);
    break;
  case 0x03:
    systemMessage(gm, "Type in the message you wish to add: ");
    textEntry(Q4F4, gm, 0x26, 0x00, "");
    return(0x00);
    break;
  default:
    break;
  }
  return(0x01);
}

FUNCTION void Q63Y(obj it)
{
  list Q638;
  appendToList(Q638, it);
  multiMessageToLoc(Q63Z(), "towncrieradd", Q638);
  return;
}

FUNCTION void Q640(obj it)
{
  list Q638;
  appendToList(Q638, it);
  multiMessageToLoc(Q63Z(), "towncrierremove", Q638);
  return;
}

TRIGGER( creation )()
{
  Q63Y(this);
  return(0x01);
}

TRIGGER( objectloaded )()
{
  Q63Y(this);
  return(0x01);
}

TRIGGER( destroyed )()
{
  Q640(this);
  return(0x01);
}