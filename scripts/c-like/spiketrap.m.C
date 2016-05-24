// Real-C
#include "ENGINE.hpp"

#include "sndfx.h"

MEMBER int Q5XS;
MEMBER int Q5V3;
MEMBER loc Q68C;
MEMBER loc Q5DE;
MEMBER loc Q4VS;

TRIGGER( creation )()
{
  setObjVar(this, "isTrapped", 0x01);
  Q4VS = loc( getLocation(this) );
  Q5V3 = getObjType(this);
  switch(Q5V3)
  {
  case 0x1108:
    Q68C = loc( Q4VS );
    setX(Q68C, getX(Q4VS) + 0x01);
    break;
  case 0x111B:
    Q5DE = loc( Q4VS );
    setY(Q5DE, getY(Q4VS) + 0x01);
    break;
  }
  return(0x00);
}

TRIGGER( message , "activate" )(obj sender, list args)
{
  Q5V3 = getObjType(this);
  Q5XS = 0x01;
  if(hasObjVar(this, "disarmed"))
  {
    switch(Q5V3)
    {
    case 0x1109:
      setType(this, 0x1108);
      break;
    case 0x111C:
      setType(this, 0x111B);
      break;
    case 0x11A1:
      setType(this, 0x11A0);
      break;
    case 0x119B:
      setType(this, 0x119A);
      break;
    default:
      break;
    }
    callback(this, 0x64, 0x2F);
  }
  else
  {
    switch(Q5V3)
    {
    case 0x1108:
      doLocAnimation(Q4VS, 0x1109, 0x06, 0x0C, 0x00, 0x00);
      break;
    case 0x111B:
      doLocAnimation(Q4VS, 0x111C, 0x06, 0x0C, 0x00, 0x00);
      break;
    case 0x11A0:
      doLocAnimation(Q4VS, 0x11A1, 0x06, 0x0C, 0x00, 0x00);
      break;
    case 0x119A:
      doLocAnimation(Q4VS, 0x119B, 0x06, 0x0C, 0x00, 0x00);
      break;
    default:
      break;
    }
    sfx(Q4VS, 0x022C, 0x00);
    list Q64R;
    getMobsInRange(Q64R, Q4VS, 0x01);
    int Q5E4 = numInList(Q64R);
    for(int i = 0x00; i < Q5E4; i ++)
    {
      obj victim = Q64R[i];
      loseHP(victim, dice(0x01, 0x06) * 0x06);
    }
    shortcallback(this, 0x04, 0x23);
  }
  return(0x00);
}

TRIGGER( message , "deactivate" )(obj sender, list args)
{
  Q5V3 = getObjType(this);
  Q5XS = 0x00;
  switch(Q5V3)
  {
  case 0x1109:
    setType(this, 0x1108);
    break;
  case 0x110E:
    setType(this, 0x1108);
    break;
  case 0x111C:
    setType(this, 0x111B);
    break;
  case 0x1121:
    setType(this, 0x111B);
    break;
  case 0x11A1:
    setType(this, 0x11A0);
    break;
  case 0x11A5:
    setType(this, 0x11A0);
    break;
  case 0x119B:
    setType(this, 0x119A);
    break;
  case 0x119F:
    setType(this, 0x119A);
    break;
  default:
    break;
  }
  return(0x00);
}

TRIGGER( enterrange , 0x00 )(obj target)
{
  if(!hasObjVar(this, "disarmed"))
  {
    list args;
    message(this, "activate", args);
  }
  else
  {
    callback(this, 0x64, 0x2F);
  }
  return(0x01);
}

TRIGGER( callback , 0x23 )()
{
  Q5V3 = getObjType(this);
  switch(Q5V3)
  {
  case 0x1108:
  case 0x1109:
    setType(this, 0x110E);
    break;
  case 0x111B:
  case 0x111C:
    setType(this, 0x1121);
    break;
  case 0x11A0:
  case 0x11A1:
    setType(this, 0x11A5);
    break;
  case 0x119A:
  case 0x119B:
    setType(this, 0x119F);
    break;
  default:
    break;
  }
  setObjVar(this, "disarmed", 0x01);
  callback(this, 0x05, 0x24);
  return(0x00);
}

TRIGGER( callback , 0x24 )()
{
  Q5V3 = getObjType(this);
  switch(Q5V3)
  {
  case 0x110E:
    setType(this, 0x1108);
    doLocAnimation(Q4VS, 0x110D, 0x05, 0x09, 0x01, 0x00);
    break;
  case 0x1121:
    setType(this, 0x111B);
    doLocAnimation(Q4VS, 0x1120, 0x05, 0x09, 0x01, 0x00);
    break;
  case 0x11A5:
    setType(this, 0x11A0);
    doLocAnimation(Q4VS, 0x11A4, 0x05, 0x09, 0x01, 0x00);
    break;
  case 0x119F:
    setType(this, 0x119A);
    doLocAnimation(Q4VS, 0x119E, 0x05, 0x09, 0x01, 0x00);
    break;
  default:
    break;
  }
  removeObjVar(this, "disarmed");
  return(0x00);
}

TRIGGER( callback , 0x2F )()
{
  if(hasObjVar(this, "disarmed"))
  {
    removeObjVar(this, "disarmed");
  }
  return(0x00);
}