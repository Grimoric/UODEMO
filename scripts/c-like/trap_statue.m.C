// Real-C
#include "ENGINE.hpp"

#include "globals.h"

MEMBER int Q5W8;

TRIGGER( creation )()
{
  Q5W8 = getObjType(this);
  setObjVar(this, "statueTileNumberFlag", Q5W8);
  return(0x00);
}

TRIGGER( leaverange , 0x01 )(obj target)
{
  if(isDead(target))
  {
    return(0x01);
  }
  int Q4B7 = 0x00;
  int damage;
  list Q67G;
  if(getObjType(this) == 0x1508)
  {
    setType(this, 0x1509);
    Q4B7 = 0x01;
  }
  if(getObjType(this) == 0x1512)
  {
    setType(this, 0x1513);
    Q4B7 = 0x01;
  }
  if(getObjType(this) == 0x151A)
  {
    setType(this, 0x151B)/* semicolon added by the decompiler post-processor */;
    Q4B7 = 0x01;
  }
  if(getObjType(this) == 0x151C)
  {
    setType(this, 0x151D);
    Q4B7 = 0x01;
  }
  if(Q4B7 == 0x01)
  {
    getMobsInRange(Q67G, getLocation(this), 0x00);
    if(!numInList(Q67G) == 0x00)
    {
      damage = dice(0x0A, 0x0A);
      for(int i = 0x00; i < numInList(Q67G); i ++)
      {
        if(random(0x00, 0x64) > getDexterity(Q67G[i]))
        {
          damage = damage * 0x02;
        }
        loseHP(Q67G[i], damage);
      }
    }
    if(!hasObjVar(this, "statueDown"))
    {
      setObjVar(this, "statueDown", 0x01);
      callback(this, 0x05, 0x24);
    }
    loseHP(this, damage);
  }
  return(0x01);
}

TRIGGER( callback , 0x24 )()
{
  list Q67G;
  getPlayersInRange(Q67G, getLocation(this), 0x1E);
  if(!numInList(Q67G) == 0x00)
  {
    callback(this, 0x05, 0x24);
  }
  else
  {
    int Q62M = getObjVar(this, "statueTileNumberFlag");
    setType(this, Q62M);
  }
  return(0x00);
}