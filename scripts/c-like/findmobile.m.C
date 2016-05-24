// Real-C
#include "ENGINE.hpp"

MEMBER list Q4QN;
MEMBER int Q5E0;

FUNCTION int Q4P7(list Q57R)
{
  int Q5T8 = numInList(Q57R);
  if(hasObjVar(this, "findScript"))
  {
    int Q5VU = Q5T8;
    Q5T8 = 0x00;
    string Q5OM = getObjVar(this, "findScript");
    for(int i = 0x00; i < Q5VU; i ++)
    {
      obj Q57Q = Q57R[0x00];
      removeItem(Q57R, 0x00);
      if(hasScript(Q57Q, Q5OM))
      {
        Q5T8 ++;
        append(Q57R, Q57Q);
      }
    }
  }
  if(hasObjVar(this, "findTemplate"))
  {
    Q5VU = Q5T8;
    Q5T8 = 0x00;
    int Q5ZB = getObjVar(this, "findTemplate");
    for(i = 0x00; i < Q5VU; i ++)
    {
      Q57Q = Q57R[0x00];
      removeItem(Q57R, 0x00);
      if(getTemplate(Q57Q) == Q5ZB)
      {
        Q5T8 ++;
        append(Q57R, Q57Q);
      }
    }
  }
  return(Q5T8);
}

FUNCTION void scan()
{
  clearList(Q4QN);
  if(hasObjVar(this, "findMobiles"))
  {
    getMobsInRange(Q4QN, getLocation(this), 0x01F4);
  }
  else
  {
    if(hasObjVar(this, "findPlayers"))
    {
      getPlayersInRange(Q4QN, getLocation(this), 0x01F4);
    }
  }
  Q5E0 = Q4P7(Q4QN);
  return;
}

TRIGGER( use )(obj user)
{
  if(!isEditing(user))
  {
    systemMessage(user, "This is a GM only tool.");
    return(0x01);
  }
  systemMessage(user, "Enter a search command:");
  textEntry(this, user, 0x029A, 0x00, "Enter a search command:");
  return(0x01);
}

TRIGGER( textentry , 0x029A )(obj sender, int button, string text)
{
  if(!isEditing(sender))
  {
    systemMessage(sender, "This is a GM only tool.");
    return(0x00);
  }
  if(text == "scan")
  {
    scan();
    systemMessage(sender, "" + Q5E0 + " matching mobiles were found.");
    return(0x00);
  }
  int Q5FR = text;
  if((Q5FR < 0x00) || (Q5FR >= Q5E0))
  {
    systemMessage(sender, "Invalid mobile");
    return(0x00);
  }
  int Q4Q1 = teleport(sender, getLocation(Q4QN[Q5FR]));
  return(0x00);
}