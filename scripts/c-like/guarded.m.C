// Real-C
#include "ENGINE.hpp"

#include "globals.h"

FORWARD void Q672();

TRIGGER( objectloaded )()
{
  if(!hasObjVar(this, "myGuards"))
  {
    return(0x01);
  }
  list myGuards;
  getObjListVar(myGuards, this, "myGuards");
  int num = Q5MA(myGuards);
  setObjVar(this, "myGuards", myGuards);
  return(0x01);
}

FUNCTION void Q41I(obj Q47S, obj corpse)
{
  if(corpse == NULL())
  {
    bark(Q47S, "CORPSE BAD (flobbitz)");
  }
  else
  {
    bark(Q47S, "CORPSE OK (flobbitz)");
  }
  return;
}

FUNCTION void Q49I(int Q65M, obj user, obj Q5QN)
{
  int i;
  obj Q44M;
  list myGuards;
  list Q5BU;
  if(!hasObjVar(this, "myGuards"))
  {
    return;
  }
  getObjListVar(myGuards, this, "myGuards");
  for(i = 0x00; i < numInList(myGuards); i ++)
  {
    Q44M = myGuards[i];
    if(isValid(Q44M))
    {
      appendToList(Q5BU, Q44M);
    }
  }
  setObjVar(this, "myGuards", Q5BU);
  if(inJusticeRegion(getLocation(this)))
  {
    return;
  }
  for(i = 0x00; i < numInList(Q5BU); i ++)
  {
    Q44M = Q5BU[i];
    setObjVar(Q44M, "guardedObjectOffender", user);
    setObjVar(Q44M, "guardedObjectComplaint", Q65M);
    setObjVar(Q44M, "guardedObjectSecond", Q5QN);
    setObjVar(Q44M, "guardedObjectSender", this);
    shortCallback(Q44M, 0x01, 0x52);
  }
  return;
}

TRIGGER( ooruse )(obj user)
{
  Q672();
  if(isMobile(this))
  {
    return(0x01);
  }
  Q49I(0x00, user, NULL());
  return(0x01);
}

FUNCTION int Q59K()
{
  list Q57V;
  obj x;
  obj y;
  if(!hasObjVar(this, "myGuards"))
  {
    return(0x00);
  }
  getMobsInRange(Q57V, getLocation(this), 0x0A);
  for(int i = 0x00; i < numInList(Q57V); i ++)
  {
    obj Q4FI = Q57V[i];
    if(isInObjVarListSet(this, "myGuards", Q4FI))
    {
      return(0x01);
    }
  }
  return(0x00);
}

TRIGGER( enterrange , 0x05 )(obj target)
{
  Q672();
  if(!inJusticeRegion(getLocation(this)))
  {
    if(isMobile(this))
    {
      if(Q59K())
      {
        if(!isHidden(this))
        {
          ebarkTo(this, target, "[guarded]");
        }
      }
    }
    else
    {
      if(getObjType(this) != 0x01)
      {
        if(Q59K())
        {
          if(!isHidden(this))
          {
            ebarkTo(this, target, getName(this) + " looks like it is being guarded.");
          }
        }
      }
    }
  }
  Q49I(0x01, target, NULL());
  return(0x01);
}

TRIGGER( gotattacked )(obj attacker)
{
  Q672();
  Q49I(0x02, attacker, NULL());
  return(0x01);
}

TRIGGER( washit )(obj attacker, int damamt)
{
  Q672();
  Q49I(0x02, attacker, NULL());
  return(0x01);
}

TRIGGER( wasgotten )(obj getter)
{
  Q672();
  Q49I(0x02, getter, NULL());
  return(0x01);
}

TRIGGER( death )(obj attacker, obj corpse)
{
  Q672();
  Q49I(0x03, attacker, corpse);
  return(0x01);
}

TRIGGER( lookedat )(obj looker)
{
  Q672();
  if(!inJusticeRegion(getLocation(this)))
  {
    if(!isHidden(this))
    {
      ebarkTo(this, looker, "[guarded]");
    }
  }
  return(0x01);
}

FUNCTION void Q672()
{
  setDefaultReturn(0x01);
  if(Q59K())
  {
    return;
  }
  removeObjVar(this, "myGuards");
  detachScript(this, "guarded");
  return;
}