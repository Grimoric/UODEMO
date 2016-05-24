// Real-C
#include "ENGINE.hpp"

#include "globals.h"

FUNCTION void Q459(obj player)
{
  if(!hasObjVar(player, "campFireId"))
  {
    setObjVar(player, "campFireId", this);
    setObjVar(player, "timeInCamp", 0x00);
    attachScript(player, "removecamping");
    callback(player, 0x01F4, 0x5F);
  }
  return;
}

FUNCTION void Q5M9(obj player)
{
  if(!hasObjVar(player, "campFireId"))
  {
    return;
  }
  obj campFireId = getObjVar(player, "campFireId");
  if(campFireId == this)
  {
    removeObjVar(player, "campFireId");
    removeObjVar(player, "timeInCamp");
    detachScript(player, "removecamping");
  }
  return;
}

TRIGGER( creation )()
{
  list Q49O;
  getPlayersInRange(Q49O, getLocation(this), 0x07);
  for(int i = 0x00; i < numInList(Q49O); i ++)
  {
    Q459(Q49O[i]);
  }
  callBack(this, 0x02, 0x8E);
  return(0x01);
}

TRIGGER( objectloaded )()
{
  list Q49O;
  getPlayersInRange(Q49O, getLocation(this), 0x07);
  for(int i = 0x00; i < numInList(Q49O); i ++)
  {
    Q459(Q49O[i]);
  }
  callBack(this, 0x02, 0x8E);
  return(0x01);
}

TRIGGER( enterrange , 0x07 )(obj target)
{
  if(isPlayer(target))
  {
    Q459(target);
  }
  return(0x01);
}

TRIGGER( leaverange , 0x07 )(obj target)
{
  if(isPlayer(target))
  {
    Q5M9(target);
  }
  return(0x01);
}

TRIGGER( callback , 0x8E )()
{
  list Q49O;
  int Q5EG;
  int i;
  loc camp = loc( getLocation(this) );
  int timer = 0x01;
  if(hasObjVar(this, "campfire_burning"))
  {
    timer = getObjVar(this, "campfire_burning");
  }
  timer = timer + 0x01;
  setObjVar(this, "campfire_burning", timer);
  callBack(this, 0x02, 0x8E);
  int campfire = getObjType(this);
  int burning = 0x0DE3;
  int Q5TV = 0x0DE9;
  int Q49B = 0x0DEA;
  if((timer > 0x1E) && (campfire == burning))
  {
    setType(this, Q5TV);
    return(0x00);
  }
  if((timer > 0x2D) && (campfire == Q5TV))
  {
    setType(this, Q49B);
    getPlayersInRange(Q49O, camp, 0x07);
    for(i = 0x00; i < numInList(Q49O); i ++)
    {
      Q5M9(Q49O[i]);
    }
    return(0x00);
  }
  if((timer > 0x32) && (campfire == Q49B))
  {
    deleteObject(this);
    return(0x00);
  }
  getPlayersInRange(Q49O, camp, 0x07);
  for(i = 0x00; i < numInList(Q49O); i ++)
  {
    if(hasObjVar(Q49O[i], "campFireId"))
    {
      obj campFireId = getObjVar(Q49O[i], "campFireId");
      if(campFireId == this)
      {
        if(hasObjVar(Q49O[i], "timeInCamp"))
        {
          int timeInCamp = getObjVar(Q49O[i], "timeInCamp");
          if(timeInCamp == 0x00)
          {
            systemMessage(Q49O[i], "You feel it would take a few moments to secure your camp.");
          }
          if(timeInCamp == 0x0F)
          {
            systemMessage(Q49O[i], "The camp is now secure.");
          }
          timeInCamp ++;
          setObjVar(Q49O[i], "timeInCamp", timeInCamp);
        }
      }
    }
  }
  return(0x00);
}