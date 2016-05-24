// Real-C
#include "ENGINE.hpp"

#include "sndfx.h"

MEMBER int Q5XS;
MEMBER int Q5OF;
MEMBER loc Q68C;
MEMBER loc Q5DE;

TRIGGER( creation )()
{
  setObjVar(this, "isTrapped", 0x01);
  loc Q4VS = loc( getLocation(this) );
  int x = getX(Q4VS);
  int y = getY(Q4VS);
  Q5OF = getObjType(this);
  switch(Q5OF)
  {
  case 0x1116:
    Q68C = loc( Q4VS );
    setX(Q68C, getX(Q4VS) + 0x01);
    x = getX(Q68C);
    y = getY(Q68C);
    break;
  case 0x1103:
    Q5DE = loc( Q4VS );
    setY(Q5DE, getY(Q4VS) + 0x01);
    break;
  }
  return(0x00);
}

TRIGGER( message , "activate" )(obj sender, list args)
{
  Q5OF = getObjType(this);
  loc Q4VS = loc( getLocation(this) );
  Q5XS = 0x01;
  if(hasObjVar(this, "disarmed"))
  {
    switch(Q5OF)
    {
    case 0x1117:
      setType(this, 0x1116);
      break;
    case 0x1104:
      setType(this, 0x1103);
      break;
    case 0x11AD:
      setType(this, 0x11AC);
      break;
    case 0x11B2:
      setType(this, 0x11B1);
      break;
    default:
      break;
    }
    callback(this, 0x64, 0x2F);
  }
  else
  {
    switch(Q5OF)
    {
    case 0x1103:
      doLocAnimation(Q4VS, 0x1104, 0x03, 0x06, 0x00, 0x00);
      break;
    case 0x1116:
      doLocAnimation(Q4VS, 0x1117, 0x03, 0x06, 0x00, 0x00);
      break;
    case 0x11AC:
      doLocAnimation(Q4VS, 0x11AD, 0x03, 0x06, 0x00, 0x00);
      break;
    case 0x11B1:
      doLocAnimation(Q4VS, 0x11B2, 0x03, 0x06, 0x00, 0x00);
      break;
    default:
      break;
    }
    sfx(Q4VS, 0x021C, 0x00);
    shortcallback(this, 0x02, 0x23);
  }
  return(0x00);
}

TRIGGER( message , "deactivate" )(obj sender, list args)
{
  Q5OF = getObjType(this);
  loc Q4VS = loc( getLocation(this) );
  Q5XS = 0x00;
  switch(Q5OF)
  {
  case 0x1107:
    setType(this, 0x1103);
    doLocAnimation(Q4VS, 0x1106, 0x03, 0x05, 0x00, 0x00);
    break;
  case 0x111A:
    setType(this, 0x1116);
    doLocAnimation(Q4VS, 0x1119, 0x03, 0x05, 0x00, 0x00);
    break;
  case 0x11B0:
    setType(this, 0x11AC);
    doLocAnimation(Q4VS, 0x11AF, 0x03, 0x05, 0x00, 0x00);
    break;
  case 0x11B5:
    setType(this, 0x11B1);
    doLocAnimation(Q4VS, 0x11B4, 0x03, 0x05, 0x00, 0x00);
    break;
  default:
    break;
  }
  return(0x00);
}

TRIGGER( enterrange , 0x01 )(obj target)
{
  list Q67M;
  int i;
  Q5OF = getObjType(this);
  loc Q4VS = loc( getLocation(this) );
  if(hasObjVar(this, "disarmed"))
  {
    callback(this, 0x64, 0x2F);
  }
  else
  {
    switch(Q5OF)
    {
    case 0x1116:
      getMobsAt(Q67M, Q68C);
      int Q5E1 = numInList(Q67M);
      if(numInList(Q67M) > 0x00)
      {
        setType(this, 0x1117);
        for(i = 0x00; i < numInList(Q67M); i ++)
        {
          loseHP(Q67M[i], dice(0x02, 0x14));
        }
        sfx(Q4VS, 0x021C, 0x00);
        shortcallback(this, 0x02, 0x24);
      }
      break;
    case 0x1103:
      getMobsAt(Q67M, Q5DE);
      if(numInList(Q67M) > 0x00)
      {
        setType(this, 0x1102);
        for(i = 0x00; i < numInList(Q67M); i ++)
        {
          loseHP(Q67M[i], dice(0x02, 0x14));
        }
        sfx(Q4VS, 0x021C, 0x00);
        shortcallback(this, 0x02, 0x24);
      }
      break;
    case 0x11AC:
      break;
    case 0x11B2:
      break;
    default:
      break;
    }
  }
  return(0x01);
}

TRIGGER( enterrange , 0x00 )(obj target)
{
  loc Q4VS = loc( getLocation(this) );
  if(!hasObjVar(this, "disarmed"))
  {
    switch(Q5OF)
    {
    case 0x1116:
      break;
    case 0x1103:
      break;
    case 0x11AC:
      setType(this, 0x11AD);
      loseHP(target, dice(0x02, 0x14));
      sfx(Q4VS, 0x021C, 0x00);
      shortcallback(this, 0x02, 0x24);
      break;
    case 0x11B2:
      setType(this, 0x11B3);
      loseHP(target, dice(0x02, 0x14));
      sfx(Q4VS, 0x021C, 0x00);
      shortcallback(this, 0x02, 0x24);
      break;
    default:
      break;
    }
  }
  else
  {
    callback(this, 0x64, 0x2F);
  }
  return(0x01);
}

TRIGGER( callback , 0x23 )()
{
  Q5OF = getObjType(this);
  switch(Q5OF)
  {
  case 0x1103:
    setType(this, 0x1107);
    break;
  case 0x1116:
    setType(this, 0x111A);
    break;
  case 0x11AC:
    setType(this, 0x11B0);
    break;
  case 0x11B1:
    setType(this, 0x11B5);
    break;
  default:
    break;
  }
  callback(this, 0x05, 0x24);
  return(0x00);
}

TRIGGER( callback , 0x24 )()
{
  loc Q4VS = loc( getLocation(this) );
  list Q67G;
  switch(Q5OF)
  {
  case 0x1117:
    getMobsAt(Q67G, Q4VS);
    break;
  case 0x1104:
    getMobsAt(Q67G, Q4VS);
    break;
  case 0x11AD:
    getMobsAt(Q67G, Q4VS);
    break;
  case 0x11B2:
    getMobsAt(Q67G, Q4VS);
    break;
  default:
    break;
  }
  if(numInList(Q67G) > 0x00)
  {
    for(int i = 0x00; i < numInList(Q67G); i ++)
    {
      if(!hasObjVar(this, "disarmed"))
      {
        loseHP(Q67G[i], dice(0x02, 0x14));
      }
    }
    shortcallback(this, 0x02, 0x24);
    return(0x00);
  }
  if((Q5XS == 0x00) || (numInList(Q67G) == 0x00))
  {
    list args;
    message(this, "deactivate", args);
    return(0x00);
  }
  sfx(getLocation(this), 0x021C, 0x00);
  return(0x00);
}

TRIGGER( callback , 0x2F )()
{
  removeObjVar(this, "disarmed");
  return(0x00);
}