// Real-C
#include "ENGINE.hpp"

#include "shipstuff.h"

MEMBER obj Q49K;
MEMBER int Q49L;

FUNCTION void Q5RV(obj Q5IP)
{
  obj Q5AK = getMultiSlaveId(Q5IP);
  list Q5Z5;
  if(hasObjVar(Q5AK, "myhousedoors"))
  {
    getObjListVar(Q5Z5, Q5AK, "myhousedoors");
  }
  appendToList(Q5Z5, Q5IP);
  setObjVar(Q5AK, "myhousedoors", Q5Z5);
  return;
}

TRIGGER( creation )()
{
  int Q5NC = Q53O(this, 0x0100, 0x0100);
  Q53P(this);
  Q49K = NULL();
  Q49L = 0x00;
  Q5RV(this);
  return(0x01);
}

FUNCTION int Q5S3(int Q5T4, int Q65M)
{
  switch(Q5T4)
  {
  case 0x00:
    switch(Q65M)
    {
    case 0x3EB2:
    case 0x3E85:
    case 0x3EB1:
    case 0x3E8A:
      return(0x01);
    }
    break;
  case 0x01:
    switch(Q65M)
    {
    case 0x3EB1:
    case 0x3E8A:
    case 0x3EB2:
    case 0x3E85:
      return(0x01);
    }
    break;
  case 0x01:
    break;
  }
  return(0x00);
}

FUNCTION int Q5S2(int Q5T4, int Q65M)
{
  switch(Q5T4)
  {
  case 0x00:
    switch(Q65M)
    {
    case 0x3ED4:
    case 0x3E84:
    case 0x3ED5:
    case 0x3E89:
      return(0x01);
    }
    break;
  case 0x01:
    switch(Q65M)
    {
    case 0x3ED5:
    case 0x3E89:
    case 0x3ED4:
    case 0x3E84:
      return(0x01);
    }
    break;
  }
  return(0x00);
}

FUNCTION int Q5SB(int Q5T4, int Q65M)
{
  switch(Q5T4)
  {
  case 0x00:
    switch(Q65M)
    {
    case 0x3ED4:
      return(0x3EB2);
    case 0x3E84:
      return(0x3E85);
    case 0x3ED5:
      return(0x3EB1);
    case 0x3E89:
      return(0x3E8A);
    case 0x3EB2:
      return(0x3ED4);
    case 0x3E85:
      return(0x3E84);
    case 0x3EB1:
      return(0x3ED5);
    case 0x3E8A:
      return(0x3E89);
    }
    break;
  case 0x01:
    switch(Q65M)
    {
    case 0x3ED5:
      return(0x3EB1);
    case 0x3E89:
      return(0x3E8A);
    case 0x3ED4:
      return(0x3EB2);
    case 0x3E84:
      return(0x3E85);
    case 0x3EB1:
      return(0x3ED5);
    case 0x3E8A:
      return(0x3E89);
    case 0x3EB2:
      return(0x3ED4);
    case 0x3E85:
      return(0x3E84);
    }
    break;
  }
  return(Q65M);
}

FUNCTION void Q5S9(int Q5T4, obj Q5IB)
{
  setType(Q5IB, Q5SB(Q5T4, getObjType(Q5IB)));
  int Q4VF = hasObjVar(Q5IB, "notLockable");
  int Q50U = Q5S2(Q5T4, getObjType(Q5IB));
  if((Q50U) && (!Q4VF))
  {
    int Q527 = 0x01;
    setObjVar(Q5IB, "notLockable", Q527);
  }
  if((!Q50U) && (Q4VF))
  {
    removeObjVar(Q5IB, "notLockable");
  }
  return;
}

FUNCTION void Q5RZ(int Q5T4, obj Q5IB, int Q50S)
{
  Q5S9(Q5T4, Q5IB);
  if((Q50S) && (Q49K == NULL()))
  {
    Q49L = Q5T4;
    Q49K = Q5IB;
    callback(Q5IB, 0x03, 0x55);
  }
  return;
}

FUNCTION int Q5SA(int Q5T4, obj Q5IB, obj user)
{
  Q4D1(Q5IB, user, "ship");
  Q662(user, 0x00);
  int Q5GC = isOnMulti(user, getMultiSlaveId(Q5IB));
  int Q50S = hasObjVar(Q5IB, "isLocked");
  int Q50Q = isEditing(user);
  if(Q50Q && Q50S && !Q5GC)
  {
    barkTo(user, user, "That is locked, but you open it with your godly powers.");
  }
  else
  {
    if(Q50S && !Q5GC)
    {
      barkTo(user, user, "That is locked.");
      return(0x00);
    }
  }
  if(Q5S2(Q5T4, getObjType(Q5IB)))
  {
    loc Q5J4 = loc( getLocation(Q5IB) );
    if(getDistanceInTiles(Q5J4, getLocation(user)) > 0x09)
    {
      return(0x00);
    }
    loc Q5CP = loc( getLocation(Q5IB) );
    setZ(Q5CP, getZ(Q5CP) + getSurfaceHeight(Q5IB));
    if((!Q5GC) && (getDistanceInTiles(Q5J4, getLocation(user)) > 0x01) && canSeeLoc(user, Q5CP))
    {
      int Q5NC = teleport(user, Q5CP);
      return(0x00 - 0x01);
    }
    if(areObjectsOn(Q5IB))
    {
      return(0x00);
    }
  }
  Q5RZ(Q5T4, Q5IB, Q50S);
  return(0x01);
}

FUNCTION void Q5RX(int Q5T4, obj Q5IB, int oldtype)
{
  if(Q5S2(Q5T4, oldtype))
  {
    Q5S9(Q5T4, Q5IB);
  }
  return;
}

FUNCTION int Q5S8(obj Q4XN, loc place, int Q4ID, int num)
{
  int Q5NC;
  loc Q4G3 = loc( place );
  setZ(Q4G3, getZ(Q4G3) + 0x0F);
  for(int Q4EJ = 0x00; Q4EJ < num; Q4EJ ++)
  {
    if(canSeeLoc(Q4XN, Q4G3))
    {
      obj multi = Q4SA(Q4G3);
      if((multi == NULL()) && (dropCheck(Q4G3, Q4XN, getHeight(Q4XN))))
      {
        if(Q4EJ == 0x00)
        {
          int Q4IA = getZ(Q4G3) - getZ(place);
          if(Q4IA < 0x00)
          {
            Q4IA = Q4IA * (0x00 - 0x01);
          }
          if(Q4IA <= 0x03)
          {
            return(0x00);
          }
        }
        return(teleport(Q4XN, Q4G3));
      }
    }
    moveDir(Q4G3, Q4ID);
  }
  return(0x00);
}

FUNCTION int Q5S5(int Q5T4, obj Q5IP, obj Q5HY)
{
  obj ship = getMultiSlaveId(Q5IP);
  int Q5SH = getObjVar(ship, "myshipdir");
  Q5SH = Q5SH * 0x02;
  int Q5I1 = getFacing(Q5HY);
  int Q4IA = Q5SH - Q5I1;
  if(Q4IA < 0x00)
  {
    Q4IA = 0x08 + Q4IA;
  }
  int Q4DX = 0x06;
  if(Q5T4 == 0x01)
  {
    Q4DX = 0x02;
  }
  if(Q4IA == Q4DX)
  {
    loc Q4D0 = loc( getLocation(Q5HY) );
    moveDir(Q4D0, Q5I1);
    moveDir(Q4D0, Q5I1);
    return(!Q5S8(Q5HY, Q4D0, Q5I1, 0x09));
  }
  else
  {
    if(isNPC(Q5HY))
    {
      if(!isOwnedPet(Q5HY))
      {
        return(0x00);
      }
    }
  }
  return(0x01);
}

FUNCTION int Q5S7(obj Q5IP, int Q5T4, string Q677)
{
  obj ship = getMultiSlaveId(Q5IP);
  if(Q5S2(Q5T4, getObjType(Q5IP)))
  {
    setObjVar(ship, Q677, 0x01);
    return(0x01);
  }
  else
  {
    setObjVar(ship, Q677, 0x00);
    return(0x00);
  }
  return(0x00);
}

FUNCTION void Q5S6(obj ship)
{
  loc Q5AH = loc( getLocation(ship) );
  list Q57V;
  getPlayersInRange(Q57V, Q5AH, 0x07);
  for(int i = 0x00; i < numInList(Q57V); i ++)
  {
    obj Q62I = Q57V[i];
    if(isOnMulti(Q62I, ship))
    {
      musicTo(Q62I, 0x20);
    }
  }
  return;
}

TRIGGER( callback , 0x55 )()
{
  int Q5T4 = Q49L;
  obj Q5IB = Q49K;
  if(Q49K != NULL())
  {
    if(Q5S2(Q5T4, getObjType(Q5IB)))
    {
      if(areObjectsOn(Q5IB))
      {
        callback(Q5IB, 0x03, 0x55);
        return(0x01);
      }
      Q5S9(Q5T4, Q5IB);
      string Q677 = "shiprightplank";
      if(Q5T4)
      {
        Q677 = "shipleftplank";
      }
      int Q527 = Q5S7(this, Q5T4, Q677);
    }
    Q49K = NULL();
    Q49L = 0x00;
  }
  return(0x01);
}

FUNCTION void Q5RW(int Q5T4, obj Q5IB, obj user)
{
  if(isDead(user) && isManifesting(user))
  {
    int Q50U = Q5S2(Q5T4, getObjType(Q5IB));
    if(!Q50U)
    {
      int Q5GC = isOnMulti(user, getMultiSlaveId(Q5IB));
      int Q50S = hasObjVar(Q5IB, "isLocked");
      if((!Q5GC) && (Q50S))
      {
        barkTo(user, user, "That is locked.");
      }
      else
      {
        Q5RZ(Q5T4, Q5IB, Q50S);
      }
    }
  }
  return;
}