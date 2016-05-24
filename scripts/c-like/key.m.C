// Real-C
#include "ENGINE.hpp"

#include "sk_table.h"

FUNCTION int Q4CC(obj user, obj key, obj usedon)
{
  if(!isEditing(user))
  {
    return(0x00);
  }
  list Q45K;
  if(hasObjListVar(usedon, "myhousedoors"))
  {
    getObjListVar(Q45K, usedon, "myhousedoors");
  }
  else
  {
    if(isMultiComp(usedon))
    {
      obj Q5TP = getMultiSlaveId(usedon);
      if(hasObjListVar(Q5TP, "myhousedoors"))
      {
        getObjListVar(Q45K, Q5TP, "myhousedoors");
      }
      else
      {
        Q45K = list( usedon );
      }
    }
    else
    {
      Q45K = list( usedon );
    }
  }
  setObjVar(this, "whatIUnlock", Q45K);
  string Q65V;
  barkTo(this, user, "This key now unlocks:");
  int Q669 = numInList(Q45K);
  for(int Q6A0 = 0x00; Q6A0 < Q669; Q6A0 ++)
  {
    obj Q65U = Q45K[Q6A0];
    Q65V = objToStr(Q65U);
    if(isValid(Q65U))
    {
      concat(Q65V, " ");
      concat(Q65V, getName(Q65U));
    }
    barkTo(this, user, Q65V);
  }
  return(0x01);
}

FUNCTION int Q4CD(obj it, obj user)
{
  obj Q4WD = getTopmostContainer(it);
  if(Q4WD != user)
  {
    systemMessage(user, "That key is unreachable.");
    return(0x00);
  }
  return(0x01);
}

TRIGGER( use )(obj user)
{
  if(!Q4CD(this, user))
  {
    return(0x00);
  }
  MEMBER int Q65M = 0x01;
  if(hasObjVar(this, "whatIUnlock"))
  {
    barkTo(this, user, "What shall I use this key on?");
    Q65M = 0x00;
  }
  else
  {
    barkTo(this, user, "This is a key blank.  Which key would you like to make a copy of?");
    Q65M = 0x01;
  }
  targetObj(user, this);
  return(0x00);
}

TRIGGER( targetobj )(obj user, obj usedon)
{
  if(!Q4CD(this, user))
  {
    return(0x00);
  }
  if(usedon == NULL())
  {
    return(0x00);
  }
  list Q665;
  int lockLevel;
  int Q66P = getObjType(usedon);
  if(hasObjVar(this, "whatIUnlock"))
  {
    getObjListVar(Q665, this, "whatIUnlock");
  }
  if(isEditing(user) && (usedon == this))
  {
    string Q65V;
    barkTo(this, user, "This key unlocks:");
    int Q669 = numInList(Q665);
    for(int Q6A0 = 0x00; Q6A0 < Q669; Q6A0 ++)
    {
      obj Q65U = Q665[Q6A0];
      Q65V = objToStr(Q65U);
      if(isValid(Q65U))
      {
        concat(Q65V, " ");
        concat(Q65V, getName(Q65U));
      }
      barkTo(this, user, Q65V);
    }
  }
  if(usedon == this)
  {
    systemMessage(user, "Enter a description for this key:");
    textEntry(this, user, 0x16, 0x00, "");
    return(0x00);
  }
  if(Q65M == 0x00)
  {
    if(isMobile(usedon))
    {
      barkTo(usedon, user, "You can't unlock that!");
      return(0x00);
    }
    int Q4VE = hasScript(usedon, "locked");
    if(!Q4VE)
    {
      Q4VE = hasObjVar(usedon, "lockLevel");
    }
    if(!Q4VE)
    {
      barkTo(usedon, user, "This doesn't appear to have a lock.");
      return(0x00);
    }
    if(!isInList(Q665, usedon))
    {
      barkTo(usedon, user, "This key doesn't seem to unlock that.");
      return(0x00);
    }
    int Q682 = hasObjVar(usedon, "isLocked");
    int Q4AC = hasObjVar(usedon, "notLockable");
    if(Q4AC)
    {
      if(Q682)
      {
        barkTo(usedon, user, "You can not currently unlock that.");
      }
      else
      {
        barkTo(usedon, user, "You can not currently lock that.");
      }
      return(0x00);
    }
    if(Q682)
    {
      lockLevel = getObjVar(usedon, "isLocked");
      setObjVar(usedon, "lockLevel", lockLevel);
      removeObjVar(usedon, "isLocked");
      if(!hasObjVar(usedon, "playerMade"))
      {
        callback(usedon, 0x0258, 0x25);
      }
      if(hasObjVar(usedon, "trapLevel"))
      {
        barkTo(usedon, user, "You disable the trap temporarily.  Lock it again to re-enable it.");
        setObjVar(usedon, "disabled", 0x01);
      }
      barkTo(usedon, user, "You unlock " + getName(usedon) + ".");
    }
    else
    {
      lockLevel = getObjVar(usedon, "lockLevel");
      setObjVar(usedon, "isLocked", lockLevel);
      barkTo(usedon, user, "You lock " + getName(usedon) + ".");
      if(hasObjVar(usedon, "disabled"))
      {
        removeObjVar(usedon, "disabled");
        if(hasObjVar(usedon, "trapLevel"))
        {
          barkTo(usedon, user, "You re-enable the trap.");
        }
      }
      return(0x00);
    }
    return(0x00);
  }
  if(Q65M == 0x01)
  {
    obj Q5GA = getTopmostContainer(usedon);
    if(Q5GA != user)
    {
      barkTo(usedon, user, "This key is unreachable.");
      return(0x00);
    }
    switch(Q66P)
    {
    case 0x100E:
    case 0x100F:
    case 0x1010:
    case 0x1012:
    case 0x1013:
      if(testSkill(user, 0x25))
      {
        if(!hasObjVar(usedon, "whatIUnlock"))
        {
          barkTo(usedon, user, "This key is also a blank.");
          return(0x00);
        }
        getObjListVar(Q665, usedon, "whatIUnlock");
        setObjVar(this, "whatIUnlock", Q665);
        systemMessage(user, "You make a copy of the key.");
        return(0x00);
      }
      else
      {
        barkTo(usedon, user, "You fail to make a copy of the key.");
        int Q5L6 = random(0x01, 0x03);
        if(Q5L6 == 0x01)
        {
          barkTo(usedon, user, "The key was destroyed in the attempt.");
          deleteObject(this);
        }
        return(0x00);
      }
      break;
    default:
      if(!Q4CC(user, this, usedon))
      {
        systemMessage(user, "You can't make a copy of that.");
      }
      return(0x00);
      break;
    }
  }
  return(0x00);
}

TRIGGER( textentry , 0x16 )(obj sender, int button, string text)
{
  if(button == 0x00)
  {
    return(0x00);
  }
  string Q5CM;
  if(hasObjVar(this, "predesc"))
  {
    Q5CM = getObjVar(this, "predesc");
  }
  else
  {
    Q5CM = "a key";
  }
  if(text != "")
  {
    concat(Q5CM, ": ");
    concat(Q5CM, text);
  }
  setObjVar(this, "lookAtText", Q5CM);
  barkTo(this, sender, "This key is now described as " + Q5CM);
  return(0x00);
}