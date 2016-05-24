// Real-C
#include "ENGINE.hpp"

#include "housestuff.h"

TRIGGER( creation )()
{
  MEMBER int guardFromUse = 0x01;
  if(hasObjVar(this, "guardFromUse"))
  {
    guardFromUse = getObjVar(this, "guardFromUse");
    if(0x00)
    {
      bark(this, "Getting guard from use behavior.");
    }
  }
  MEMBER int guardFromProximity = 0x01;
  if(hasObjVar(this, "guardFromProximity"))
  {
    guardFromProximity = getObjVar(this, "guardFromProximity");
    if(0x00)
    {
      bark(this, "Getting guard from proximity behavior.");
    }
  }
  MEMBER int guardFromAttack = 0x01;
  if(hasObjVar(this, "guardFromAttack"))
  {
    guardFromAttack = getObjVar(this, "guardFromAttack");
    if(0x00)
    {
      bark(this, "Getting guard from attack behavior.");
    }
  }
  MEMBER int myGuardReaction = 0x01;
  if(hasObjVar(this, "myGuardReaction"))
  {
    myGuardReaction = getObjVar(this, "myGuardReaction");
    if(0x00)
    {
      bark(this, "Getting guard reaction.");
    }
  }
  MEMBER int myPatrolDistance = 0x1E;
  if(hasObjVar(this, "myPatrolDistance"))
  {
    myPatrolDistance = getObjVar(this, "myPatrolDistance");
    if(0x00)
    {
      bark(this, "Getting patrol distance.");
    }
  }
  MEMBER list guardList;
  MEMBER list Q5HE;
  MEMBER int Q68M;
  return(0x01);
}

TRIGGER( objectloaded )()
{
  int num = Q5MA(guardList);
  return(0x01);
}

FUNCTION void Q4UH(obj Q4UI, obj Q607)
{
  if(!isValid(Q4UI))
  {
    return;
  }
  if(isInContainer(Q4UI))
  {
    bark(Q4UI, "This is in a container and cannot be guarded.");
    return;
  }
  list Q517;
  if(!isInList(guardList, Q4UI))
  {
    appendToList(guardList, Q4UI);
  }
  attachScript(Q4UI, "guarded");
  if(hasObjVar(Q4UI, "myGuards"))
  {
    getObjListVar(Q517, Q4UI, "myGuards");
  }
  if(!isInList(Q517, Q607))
  {
    appendToList(Q517, Q607);
  }
  setObjVar(Q4UI, "myGuards", Q517);
  if(0x00)
  {
    bark(Q4UI, "I am now guarded.");
  }
  return;
}

FUNCTION void Q5WC(obj Q4IO)
{
  detachScript(Q4IO, "guarded");
  while(isInList(guardList, Q4IO))
  {
    if(0x00)
    {
      bark(Q4IO, "I am not guarded anymore.");
    }
    removeSpecificItem(guardList, Q4IO);
  }
  return;
}

TRIGGER( callback , 0x52 )()
{
  int Q65N = 0x00;
  if(!hasObjVar(this, "guardedObjectOffender"))
  {
    return(0x00);
  }
  if(!hasObjVar(this, "guardedObjectComplaint"))
  {
    return(0x00);
  }
  if(!hasObjVar(this, "guardedObjectSecond"))
  {
    return(0x00);
  }
  if(!hasObjVar(this, "guardedObjectSender"))
  {
    return(0x00);
  }
  obj Q5ZR = getObjVar(this, "guardedObjectOffender");
  int Q615 = getObjVar(this, "guardedObjectComplaint");
  obj corpse = getObjVar(this, "guardedObjectSecond");
  obj sender = getObjVar(this, "guardedObjectSender");
  removeObjVar(this, "guardedObjectOffender");
  removeObjVar(this, "guardedObjectComplaint");
  removeObjVar(this, "guardedObjectSecond");
  removeObjVar(this, "guardedObjectSender");
  if(Q5ZR == this)
  {
    return(0x01);
  }
  if(hasObjListVar(this, "myBoss"))
  {
    list Q53J;
    getObjListVar(Q53J, this, "myBoss");
    obj Q5ZV;
    for(int i = 0x00; i < numInList(Q53J); i ++)
    {
      Q5ZV = Q53J[i];
      if(Q5ZV == Q5ZR)
      {
        if(0x00)
        {
          bark(this, "My boss breached guard, so I don't care.");
        }
        return(0x01);
      }
    }
  }
  if(0x00)
  {
    string Q4TO = Q615;
    bark(this, Q4TO);
  }
  int Q4YQ = 0x00;
  switch(Q615)
  {
  case 0x00:
    if(0x00)
    {
      bark(this, "Guarding from use.");
    }
    if(guardFromUse == 0x01)
    {
      Q65N = 0x01;
    }
    if(corpse != NULL())
    {
      if(0x00)
      {
        bark(this, "Violated my owner's corpse!");
      }
      Q4YQ = 0x01;
    }
    setCriminal(Q5ZR, 0x01E0);
    break;
  case 0x01:
    if(0x00)
    {
      bark(this, "Guarding from proximity!");
    }
    if(guardFromProximity == 0x01)
    {
      Q65N = 0x01;
    }
    break;
  case 0x02:
    if(0x00)
    {
      bark(this, "Guarding from attack or theft!");
    }
    if(guardFromAttack == 0x01)
    {
      Q65N = 0x01;
    }
    Q4YQ = 0x01;
    break;
  case 0x03:
    Q5WC(sender);
    stopFollowing(this);
    Q4UH(corpse, this);
    if(0x00)
    {
      bark(this, "My guarded mobile died, so I am guarding its corpse!");
    }
    break;
  default:
    if(0x00)
    {
      bark(this, "Fell through to default type!");
    }
    Q65N = 0x00;
    break;
  }
  int Q4MW;
  if(isMobile(sender) && Q4YQ)
  {
    Q65N = 0x01;
    Q4MW = 0x01;
  }
  if(Q4YQ)
  {
    Q65N = 0x01;
    Q4MW = 0x01;
  }
  if(!Q65N)
  {
    return(0x00);
  }
  if(!canSeeObj(this, sender))
  {
    if(0x00)
    {
      bark(this, "Cannot see the guarded object.");
    }
    return(0x00);
  }
  if(!isInList(guardList, sender))
  {
    if(0x00)
    {
      bark(this, "Not an object in my guardList.");
    }
    return(0x00);
  }
  int Q60U = myGuardReaction;
  if(Q4MW)
  {
    if(0x00)
    {
      bark(this, "Attack override!");
    }
    Q60U = 0x03;
  }
  switch(Q60U)
  {
  case 0x01:
    if(hasObjVar(this, "isPet"))
    {
      string Q44N;
      Q44N = getName(this) + " looks somewhat annoyed."/* ) */;
      bark(this, Q44N);
    }
    else
    {
      bark(this, "Please leave that alone.");
    }
    break;
  case 0x02:
    loc Q47H = loc( getLocation(Q5ZR) );
    loc Q48C = loc( interpose(Q47H, getLocation(sender)) );
    if(0x00)
    {
      bark(this, "Interposing myself!");
    }
    walkTo(this, Q48C, 0x02);
    break;
  case 0x03:
    if(0x00)
    {
      bark(this, "Attacking the interloper!");
    }
    attack(this, Q5ZR);
    break;
  default:
    if(0x00)
    {
      bark(this, "Couldn't interpret a guard reaction.");
    }
    return(0x00);
  }
  return(0x00);
}

TRIGGER( pathfound , 0x02 )()
{
  if(0x00)
  {
    bark(this, "I am interposed!");
  }
  return(0x00);
}

TRIGGER( pathnotfound , 0x02 )()
{
  if(0x00)
  {
    bark(this, "Can't get a path to interpose.");
  }
  return(0x00);
}

FUNCTION void Q4UG(loc Q5IM, obj this)
{
  walkTo(this, Q5IM, 0x03);
  obj Q5BR = createNoResObjectAt(0x01, Q5IM);
  Q4UH(Q5BR, this);
  return;
}

TRIGGER( pathfound , 0x03 )()
{
  if(0x00)
  {
    bark(this, "Moved to place to guard.");
  }
  return(0x00);
}

TRIGGER( pathnotfound , 0x03 )()
{
  if(0x00)
  {
    bark(this, "I can't get to that place to guard it effectively.");
  }
  return(0x00);
}

FUNCTION void Q5WB(loc Q5IM)
{
  int Q4QI = 0x00;
  for(int Q4Z9 = 0x00; Q4Z9 < numInList(guardList); Q4Z9 = Q4Z9 + 0x01)
  {
    obj Q5FX;
    Q5FX = guardList[Q4Z9];
    loc Q62H = loc( getLocation(Q5FX) );
    if(Q62H == Q5IM)
    {
      Q4QI = 0x01;
      break;
    }
  }
  if(!Q4QI)
  {
    return;
  }
  Q5WC(Q5FX);
  deleteObject(Q5FX);
  return;
}

FUNCTION void Q66D()
{
  for(int Q4BA = 0x00; Q4BA < numInList(guardList); Q4BA = Q4BA + 0x01)
  {
    if(!isValid(guardList[Q4BA]))
    {
      Q5WC(guardList[Q4BA]);
    }
  }
  return;
}

FUNCTION void Q66H(obj this)
{
  debugMessage("starting update of patrol path");
  list Q5C6;
  int Q45I = 0x01;
  for(int Q4BA = 0x00; Q4BA < numInList(guardList); Q4BA = Q4BA + 0x01)
  {
    obj Q4UJ;
    loc Q5VD = loc( getLocation(Q4UJ) );
    Q4UJ = guardList[Q4BA];
    Q45I = 0x01;
    int Q4IL = getDistanceInTiles(getLocation(this), Q5VD);
    if(Q4IL > myPatrolDistance)
    {
      if(!isMobile(Q4UJ))
      {
        Q5WC(Q4UJ);
      }
      Q45I = 0x00;
    }
    if(Q45I)
    {
      appendToList(Q5C6, Q4UJ);
    }
  }
  copyList(Q5HE, Q5C6);
  return;
}

FUNCTION void Q5HF(obj this)
{
  int myPatrolDelay = 0x1E;
  if(hasObjVar(this, "myPatrolDelay"))
  {
    myPatrolDelay = getObjVar(this, "myPatrolDelay");
  }
  Q66H(this);
  if(Q68M == numInList(Q5HE))
  {
    Q68M = 0x00;
  }
  if(numInList(Q5HE) < 0x01)
  {
    debugMessage("I have nothing in my list of items to patrol.");
    return;
  }
  loc where = loc( getLocation(Q5HE[Q68M])/* ) */ );
  if(0x00)
  {
    bark(this, "Walking to next patrol point.");
  }
  walkTo(this, where, 0x04);
  Q68M ++;
  int Q5SZ = 0x01;
  if(hasObjVar(this, "continuePatrol"))
  {
    Q5SZ = getObjVar(this, "continuePatrol");
  }
  if(Q5SZ == 0x01)
  {
    callBack(this, myPatrolDelay, 0x17);
  }
  return;
}

TRIGGER( callback , 0x17 )()
{
  Q5HF(this);
  return(0x01);
}

FUNCTION int Q4ZW(obj Q5HY)
{
  int Q5SZ = getObjVar(Q5HY, "continuePatrol");
  if(Q5SZ == 0x01)
  {
    return(0x01);
  }
  return(0x00);
}

TRIGGER( pathnotfound , 0x04 )()
{
  if(0x00)
  {
    bark(this, "COuld not reach next patrol point.");
  }
  return(0x00);
}

TRIGGER( pathfound , 0x04 )()
{
  if(0x00)
  {
    bark(this, "At next patrol point.");
  }
  return(0x00);
}

TRIGGER( foundfood )(obj target)
{
  for(int Q4BA = 0x00; Q4BA < numInList(guardList); Q4BA = Q4BA + 0x01)
  {
    obj Q5Z4 = guardList[Q4BA];
    if(target == Q5Z4)
    {
      if(0x00)
      {
        bark(target, "I'm guarded but my guard tried to eat me!");
      }
      return(0x00);
    }
  }
  return(0x01);
}

TRIGGER( callback , 0x1A )()
{
  if(numInList(guardList) < 0x01)
  {
    return(0x00);
  }
  bark(this, "I am guarding the following:");
  string Q44Q;
  for(int Q53X = 0x00; Q53X < numInList(guardList); Q53X ++)
  {
    Q44Q = getName(guardList[Q53X]);
    if(Q44Q != "unused")
    {
      bark(this, Q44Q);
    }
  }
  return(0x00);
}

FUNCTION void Q4DG(obj this)
{
  obj Q612;
  for(int i = 0x00; i < numInList(guardList); i ++)
  {
    Q612 = guardList[i];
    Q5WC(Q612);
  }
  return;
}