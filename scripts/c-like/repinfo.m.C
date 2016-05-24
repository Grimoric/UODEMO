// Real-C
#include "ENGINE.hpp"

TRIGGER( use )(obj user)
{
  if(!hasObjVar(this, "usableByPublic"))
  {
    if(!isEditing(user))
    {
      return(0x01);
    }
  }
  systemMessage(user, "Who would you like the status of?");
  targetObj(user, this);
  return(0x00);
}

FUNCTION void Q5KN(obj user, obj target, string Q539)
{
  if(!hasObjVar(target, Q539))
  {
    return;
  }
  string Q58D = Q539 + ": ";
  list Q5FC;
  getObjListVar(Q5FC, target, Q539);
  for(int i = 0x00; i < numInList(Q5FC); i ++)
  {
    obj Q4G3 = Q5FC[i];
    if(!isValid(Q5FC[i]))
    {
      concat(Q58D, "(" + objtoint(Q4G3) + "), ");
    }
    else
    {
      concat(Q58D, getName(Q4G3) + ", ");
    }
  }
  systemMessage(user, Q58D);
  return;
}

FUNCTION void Q5KL(obj user, obj target, string Q676)
{
  if(!hasObjVar(target, Q676))
  {
    return;
  }
  string Q58D = Q676 + ": ";
  int val = getObjVar(target, Q676);
  systemMessage(user, Q58D + val);
  return;
}

FUNCTION void Q5KM(obj user, obj target, string Q676)
{
  if(!hasObjVar(target, Q676))
  {
    return;
  }
  string Q58D = Q676 + ": ";
  obj Q4G3 = getObjVar(target, Q676);
  if(!isValid(Q4G3))
  {
    concat(Q58D, "(" + objtoint(Q4G3) + "), ");
  }
  else
  {
    concat(Q58D, getName(Q4G3) + ", ");
  }
  systemMessage(user, Q58D);
  return;
}

TRIGGER( targetobj )(obj user, obj usedon)
{
  if(!hasObjVar(this, "usableByPublic"))
  {
    if(!isEditing(user))
    {
      return(0x01);
    }
  }
  if(usedon == NULL())
  {
    return(0x00);
  }
  systemMessage(user, "" + getName(usedon) + " has the following flags:");
  Q5KN(user, usedon, "aggressionVictimList");
  Q5KN(user, usedon, "lawfullyDamaged");
  Q5KN(user, usedon, "canReportIdList");
  Q5KN(user, usedon, "crimeVictimList");
  Q5KL(user, usedon, "murderCount");
  Q5KL(user, usedon, "criminal");
  Q5KM(user, usedon, "controller");
  return(0x00);
}