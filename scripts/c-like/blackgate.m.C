// Real-C
#include "ENGINE.hpp"

#include "globals.h"

MEMBER int Q66A;
MEMBER int Q5U4;
MEMBER int Q63R;
MEMBER int Q533;

FUNCTION void Q5GF(obj gate, int it)
{
  setType(gate, 0x01);
  doLocAnimation(getLocation(gate), 0x1FCB, 0x09, 0x20, 0x00, 0x00);
  callback(gate, 0x01, 0x63);
  callback(gate, 0x04, it);
  return;
}

FUNCTION void Q4DI(obj gate)
{
  doLocAnimation(getLocation(gate), 0x1FCB, 0x09, 0x20, 0x01, 0x00);
  setType(gate, 0x01);
  Q66A = 0x00;
  return;
}

TRIGGER( creation )()
{
  Q66A = 0x00;
  Q5U4 = 0x00;
  Q63R = 0x00;
  Q533 = 0x03;
  callback(this, 0x01, 0x60);
  return(0x01);
}

TRIGGER( enterrange , 0x09 )(obj target)
{
  if(isPlayer(target))
  {
    systemMessage(target, "A sense of great foreboding overtakes you.");
  }
  return(0x01);
}

TRIGGER( enterrange , 0x00 )(obj target)
{
  if(Q66A)
  {
    if(isMobile(target))
    {
      int Q65M = getObjType(target);
      if(Q65M != 0x09)
      {
        int Q4XB = getCurHP(target) + 0x01;
        loseHP(target, Q4XB);
      }
    }
  }
  return(0x00);
}

TRIGGER( callback , 0x61 )()
{
  loc there = loc( getLocation(this) );
  int Q69L = random(0x00, 0x05) - 0x02;
  int Q69V = random(0x00, 0x05) - 0x02;
  setX(there, getX(there) + Q69L);
  setY(there, getY(there) + Q69V);
  int find = findGoodSpotNear(there, 0x04, 0x10, 0x01);
  obj daemon = NULL();
  if(find)
  {
    daemon = createGlobalNPCAt(0x07C5, there, 0x00);
  }
  if(daemon != NULL())
  {
    Q63R ++;
    Q5U4 ++;
  }
  if(Q5U4 >= Q533)
  {
    Q4DI(this);
    int time = random(0x0A, 0x3C);
    callback(this, time, 0x60);
    Q5U4 = 0x00;
  }
  else
  {
    int Q5DO = random(0x01, 0x03);
    callback(this, Q5DO, 0x61);
  }
  return(0x01);
}

TRIGGER( callback , 0x60 )()
{
  Q5GF(this, 0x61);
  return(0x01);
}

TRIGGER( callback , 0x63 )()
{
  setType(this, 0x1FD3);
  Q66A = 0x01;
  return(0x01);
}