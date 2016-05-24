// Real-C
#include "ENGINE.hpp"

#include "multistuff.h"

MEMBER int Q43W;
MEMBER int Q58A;
MEMBER int Q5NG;
MEMBER int Q65T;

TRIGGER( creation )()
{
  if(!Q58A)
  {
    Q43W = 0x03;
    Q58A = 0x01;
  }
  return(0x01);
}

FUNCTION void Q5RY(obj ship)
{
  list Q5J1;
  getPlayersOnMulti(Q5J1, ship);
  int num = numInList(Q5J1);
  for(int Q4EJ = 0x00; Q4EJ < num; Q4EJ ++)
  {
    obj player = Q5J1[Q4EJ];
    attachScript(player, "shipnakedhack");
  }
  return;
}

FUNCTION int Q5SO(obj Q5AK, int Q4IE, int Q58B)
{
  loc location;
  int Q5NC;
  location = loc( getLocation(Q5AK) );
  for(int Q5CS = Q58B; Q5CS > 0x00; Q5CS --)
  {
    moveDir(location, Q4IE);
  }
  Q5NC = moveMultiCheck(Q5AK, location, Q43W);
  if(Q5NC <= 0x00)
  {
    int Q5GH = (Q4IE + 0x04) % 0x08;
    while((Q5NC <= 0x00) && (Q58B > 0x01))
    {
      Q58B --;
      moveDir(location, Q5GH);
      Q5NC = moveMultiCheck(Q5AK, location, Q43W);
    }
  }
  return(Q5NC);
}

FUNCTION int Q5SM(obj ship, int Q5M5)
{
  int Q4FX = getObjVar(ship, "myshipdir");
  return((((Q4FX * 0x02) + Q5M5) % 0x08));
}

FUNCTION int Q5SP(obj Q5AK, int Q4IE, int Q58B)
{
  return(Q5SO(Q5AK, Q5SM(Q5AK, Q4IE), Q58B));
}

FUNCTION int Q5SS(int myshiptype, int Q4IE)
{
  return(0x00 + (myshiptype * 0x04) + (Q4IE * 0x01));
}

FUNCTION int Q5SQ(obj Q5AK, int Q4IE, int Q4AG)
{
  string Q5N7;
  int myshiptype = getObjVar(Q5AK, "myshiptype");
  int Q5CT = 0x00 + (myshiptype * 0x04) + (Q4IE * 0x01);
  int Q5NC = recycleMultiCheckRotate(Q5AK, Q5CT, Q43W, Q4AG);
  if(Q5NC > 0x00)
  {
    setObjVar(Q5AK, "myshipdir", Q4IE);
  }
  return(Q5NC);
}

FUNCTION obj Q5SE(int Q5SR, int Q4ID, loc place)
{
  Q5NG = (0x00 - 0x06);
  int Q5BF = 0x00;
  Q5BF --;
  int Q59C = 0x00 + (Q5SR * 0x04) + (Q4ID * 0x01);
  obj Q5AK = NULL();
  if(areMobilesInMultiArea(Q59C, place))
  {
    Q5NG = (0x00 - 0x09);
    return(NULL());
  }
  Q5AK = makeMultiInstCheck(place, Q59C, Q43W, 0x00, Q5NG, 0x00, Q5BF, Q5BF);
  return(Q5AK);
}

FUNCTION obj Q5SD(int Q5SR, loc place)
{
  obj ship;
  int Q4IE = 0x05;
  ship = Q5SE(Q5SR, 0x00, place);
  if(ship != NULL())
  {
    Q4IE = 0x00;
  }
  if(Q4IE != 0x05)
  {
    setObjVar(ship, "myshipdir", Q4IE);
    setObjVar(ship, "myshiptype", Q5SR);
    string Q5AS;
    getCurrentTimeStr(Q5AS);
    setObjVar(ship, "creationtime", Q5AS);
  }
  return(ship);
}

FUNCTION int Q5SN(obj Q62O)
{
  return(hasObjVar(Q62O, "shipcommand"));
}

FUNCTION int Q5SJ(obj ship)
{
  obj Q62O = getObjVar(ship, "myshiptillerman");
  if(Q62O == NULL())
  {
    return(0x00);
  }
  return(Q5SN(Q62O));
}

FUNCTION int Q5S4(obj ship, int Q5M5, obj Q62O)
{
  int Q4ID = Q5SM(ship, Q5M5);
  int Q58G = getMultiType(ship);
  loc Q4OI;
  loc Q4OJ;
  int Q5NC = getMultiExtents(Q58G, Q4OI, Q4OJ);
  int Q44G = getX(Q4OJ) - getX(Q4OI) + 0x01;
  int Q44I = getY(Q4OJ) - getY(Q4OI) + 0x01;
  loc Q5CP = loc( getLocation(ship) );
  int Q5EE = 0x00;
  int Q5EF = 0x00;
  switch(Q4ID)
  {
  case 0x00:
  case 0x04:
    Q5EF = Q44I;
    break;
  case 0x01:
  case 0x03:
  case 0x05:
  case 0x07:
    Q5EE = Q44G;
    Q5EF = Q44I;
    break;
  case 0x02:
  case 0x06:
    Q5EE = Q44G;
    break;
  default:
    Q5EE = Q44G;
    Q5EF = Q44I;
    break;
  }
  int Q44F = 0x00;
  int Q44H = 0x00;
  switch(Q4ID)
  {
  case 0x00:
    Q44H = 0x00;
    break;
  case 0x01:
    Q44F = 0x02;
    Q44H = 0x00;
    break;
  case 0x02:
    Q44F = 0x02;
    break;
  case 0x03:
    Q44F = 0x02;
    Q44H = 0x04;
    break;
  case 0x04:
    Q44H = 0x04;
    break;
  case 0x05:
    Q44F = 0x06;
    Q44H = 0x04;
    break;
  case 0x06:
    Q44F = 0x06;
    break;
  case 0x07:
    Q44F = 0x06;
    Q44H = 0x00;
    break;
  default:
    break;
  }
  for(; Q5EE > 0x00; Q5EE --)
  {
    moveDir(Q5CP, Q44F);
  }
  for(; Q5EF > 0x00; Q5EF --)
  {
    moveDir(Q5CP, Q44H);
  }
  if(isInMap(Q5CP))
  {
    if(hasObjVar(Q62O, "oldshipcommand"))
    {
      removeObjVar(Q62O, "oldshipcommand");
    }
    int Q5ND = moveMultiCheck(ship, Q5CP, Q43W);
    Q65T = 0x01;
    return(Q5ND);
  }
  Q5RY(ship);
  return(moveMultiMapSwitch(ship, Q5CP, Q43W));
}

FUNCTION int Q5S0(int Q65M)
{
  int Q59C = 0x00 + (Q65M * 0x04);
  return(getNumInMultiType(Q59C) * 0xDC);
}