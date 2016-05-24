// Real-C
#include "ENGINE.hpp"

#include "sndfx.h"

FUNCTION void Q66C(obj item)
{
  int Q4Q1;
  string Q69U;
  string Q5C2;
  int Q664;
  Q4Q1 = getResource(Q664, item, "cloth", 0x03, 0x02);
  if(Q4Q1)
  {
    Q69U = Q664;
    Q5C2 = Q69U + " yards of cloth";
    setObjVar(item, "lookAtText", Q5C2);
  }
  else
  {
    Q4Q1 = getResource(Q664, item, "leather", 0x03, 0x02);
    if(Q4Q1)
    {
      Q69U = Q664;
      Q5C2 = Q69U + " yards of leather";
      setObjVar(item, "lookAtText", Q5C2);
    }
  }
  return;
}

TRIGGER( use )(obj user)
{
  systemMessage(user, "What cloth should I use these scissors on?");
  targetObj(user, this);
  return(0x01);
}

TRIGGER( targetobj )(obj user, obj usedon)
{
  if(usedon == NULL())
  {
    return(0x00);
  }
  int Q66P = getObjType(usedon);
  loc location = loc( getLocation(user) );
  obj Q47L;
  obj Q47G;
  int Q5UA = getHue(usedon);
  int Q4Q1;
  int Q4DL;
  switch(Q66P)
  {
  case 0x0F95:
  case 0x0F96:
  case 0x0F97:
  case 0x0F98:
  case 0x0F99:
  case 0x0F9A:
  case 0x0F9B:
  case 0x0F9C:
  case 0x0F9C:
  case 0x175D:
  case 0x175E:
  case 0x175F:
  case 0x1760:
  case 0x1761:
  case 0x1762:
  case 0x1763:
  case 0x1764:
  case 0x1765:
  case 0x1766:
  case 0x1767:
  case 0x1768:
    if(isAtHome(usedon))
    {
      systemMessage(user, "That cloth belongs to someone else.");
      return(0x00);
    }
    Q4Q1 = getResource(Q4DL, usedon, "cloth", 0x03, 0x02);
    if(Q4DL > 0x00)
    {
      Q47G = getBackpack(user);
      int Q5L6 = random(0x01, 0x02);
      if(Q5L6 == 0x01)
      {
        Q47L = createNoResObjectIn(0x0E21, Q47G);
      }
      else
      {
        Q47L = createNoResObjectIn(0x0EE9, Q47G);
      }
      sfx(location, 0x0248, 0x00);
      setHue(Q47L, Q5UA);
      transferResources(Q47L, usedon, 0x01, "cloth");
      Q66C(usedon);
      systemMessage(user, "You cut some cloth into a bandage, and put it in your backpack");
      if(Q4DL == 0x01)
      {
        deleteObject(usedon);
      }
    }
    else
    {
      systemMessage(user, "There is no cloth left on that.");
      deleteObject(usedon);
    }
    break;
  default:
    systemMessage(user, "You can't use scissors on that.");
    break;
  }
  return(0x00);
}