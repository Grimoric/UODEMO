// Real-C
#include "ENGINE.hpp"

#include "itemmanip.h"

FORWARD void Q49C();
FORWARD void Q63J(obj user);

FUNCTION int Q532()
{
  int Q62A = getObjType(this);
  switch(Q62A)
  {
  case 0x0A28:
  case 0x0F64:
  case 0x0F6B:
    setObjVar(this, "burning", 0x00);
    break;
  case 0x0A18:
  case 0x0A1D:
  case 0x0A25:
    setObjVar(this, "fuel", 0x64);
    setObjVar(this, "burning", 0x00);
    break;
  case 0x0B1A:
  case 0x0A0F:
  case 0x0A15:
  case 0x0A1A:
  case 0x0A22:
  case 0x0A12:
    setObjVar(this, "fuel", 0x64);
    setObjVar(this, "burning", 0x01);
    callback(this, 0x1E, 0x39);
    break;
  case 0x0A26:
  case 0x0A27:
  case 0x0A29:
  case 0x1853:
  case 0x1857:
  case 0x1849:
  case 0x184D:
    setObjVar(this, "burning", 0x00);
    break;
  case 0x0B1A:
  case 0x0B1D:
  case 0x0B26:
  case 0x1854:
  case 0x1858:
  case 0x184A:
  case 0x184E:
    setObjVar(this, "burning", 0x01);
    break;
  }
  return(0x01);
}

FUNCTION int Q659(obj user)
{
  int Q62A = getObjType(this);
  if(hasObjVar(this, "fuel"))
  {
    int fuel = getObjVar(this, "fuel");
  }
  switch(Q62A)
  {
  case 0x0A26:
    setObjVar(this, "burning", 0x01);
    setType(this, 0x0B1A);
    break;
  case 0x0A27:
    setObjVar(this, "burning", 0x01);
    setType(this, 0x0B1D);
    break;
  case 0x0A29:
    setObjVar(this, "burning", 0x01);
    setType(this, 0x0B26);
    break;
  case 0x1853:
    setObjVar(this, "burning", 0x01);
    setType(this, 0x1854);
    break;
  case 0x1857:
    setObjVar(this, "burning", 0x01);
    setType(this, 0x1858);
    break;
  case 0x1849:
    setObjVar(this, "burning", 0x01);
    setType(this, 0x184A);
    break;
  case 0x184D:
    setObjVar(this, "burning", 0x01);
    setType(this, 0x184E);
    break;
  case 0x0A28:
    int Q527;
    obj Q47F = getBackpack(user);
    obj Q5BO = requestCreateObjectAt(0x0A0F, getLocation(user));
    setObjVar(this, "fuel", 0x64);
    setObjVar(Q5BO, "burning", 0x01);
    attachscript(Q5BO, "torch");
    callback(Q5BO, 0x1E, 0x39);
    if(!isInContainer(this))
    {
      Q527 = teleport(Q5BO, getLocation(this));
      if(getQuantity(this) > 0x01)
      {
        destroyOne(this);
        if(canHold(Q47F, this))
        {
          systemMessage(user, "You put the remaining unlit candles into your backpack.");
          Q527 = putObjContainer(this, Q47F);
        }
        else
        {
          systemMessage(user, "You put the remaining unlit candles at your feet.");
          Q527 = teleport(this, getLocation(user));
        }
      }
    }
    else
    {
      destroyOne(this);
      if(getItemAtSlot(user, 0x02) != NULL())
      {
        systemMessage(user, "You cannot hold the candle, so it has been placed at your feet.");
      }
      else
      {
        Q527 = equipObj(Q5BO, user, 0x02);
        systemMessage(user, "You put the candle in your left hand.");
      }
    }
    if(getQuantity(this) == 0x01)
    {
      destroyOne(this);
    }
    break;
  case 0x0F64:
  case 0x0F6B:
    Q47F = getBackpack(user);
    obj Q5CB = requestCreateObjectAt(0x0A12, getLocation(user));
    setObjVar(this, "fuel", 0x64);
    setObjVar(Q5CB, "burning", 0x01);
    attachscript(Q5CB, "torch");
    callback(Q5CB, 0x1E, 0x39);
    if(!isInContainer(this))
    {
      Q527 = teleport(Q5CB, getLocation(this));
      if(getQuantity(this) > 0x01)
      {
        destroyOne(this);
        if(canHold(Q47F, this))
        {
          systemMessage(user, "You put the remaining unlit torches into your backpack.");
          Q527 = putObjContainer(this, Q47F);
        }
        else
        {
          systemMessage(user, "You put the remaining unlit torches at your feet.");
          Q527 = teleport(this, getLocation(user));
        }
      }
    }
    else
    {
      destroyOne(this);
      if(getItemAtSlot(user, 0x02) != NULL())
      {
        systemMessage(user, "You cannot hold the torch, so it has been placed at your feet.");
      }
      else
      {
        Q527 = equipObj(Q5CB, user, 0x02);
        systemMessage(user, "You put the torch in your left hand.");
      }
    }
    if(getQuantity(this) == 0x01)
    {
      destroyOne(this);
    }
    break;
  case 0x0A18:
  case 0x0A1D:
  case 0x0A25:
    if(fuel > 0x00)
    {
      setObjVar(this, "burning", 0x01);
      callback(this, 0x1E, 0x39);
      setType(this, Q62A - 0x03);
    }
    else
    {
      systemMessage(user, "The lantern is out of fuel.");
    }
    break;
  default:
    return(0x00);
    break;
  }
  sfx(getLocation(this), 0x47, 0x00);
  return(0x01);
}

FUNCTION int Q658(obj user)
{
  int Q62A = getObjType(this);
  if(hasObjVar(this, "fuel"))
  {
    int fuel = getObjVar(this, "fuel");
  }
  switch(Q62A)
  {
  case 0x0B1A:
    setObjVar(this, "burning", 0x00);
    setType(this, 0x0A26);
    break;
  case 0x0B1D:
    setObjVar(this, "burning", 0x00);
    setType(this, 0x0A27);
    break;
  case 0x0B26:
    setObjVar(this, "burning", 0x00);
    setType(this, 0x0A29);
    break;
  case 0x1854:
    setObjVar(this, "burning", 0x00);
    setType(this, 0x1853);
    break;
  case 0x1858:
    setObjVar(this, "burning", 0x00);
    setType(this, 0x1857);
    break;
  case 0x184A:
    setObjVar(this, "burning", 0x00);
    setType(this, 0x1849);
    break;
  case 0x184E:
    setObjVar(this, "burning", 0x00);
    setType(this, 0x184D);
    break;
  case 0x0A0F:
    systemMessage(user, "You blow out the candle, and discard it.");
    destroyOne(this);
    break;
  case 0x0A12:
    systemMessage(user, "You douse the torch, and discard it.");
    destroyOne(this);
    break;
  case 0x0A15:
  case 0x0A1A:
  case 0x0A22:
    setObjVar(this, "burning", 0x00);
    setType(this, Q62A + 0x03);
    break;
  default:
    return(0x00);
    break;
  }
  sfx(getLocation(this), 0x47, 0x00);
  return(0x01);
}

FUNCTION void Q63J(obj user)
{
  if(!Q659(user))
  {
    int Q527 = Q658(user);
  }
  return;
}

FUNCTION void Q49C()
{
  int Q62A = getObjType(this);
  switch(Q62A)
  {
  case 0x0A0F:
  case 0x0A28:
  case 0x0A12:
    deleteObject(this);
  case 0x0A15:
    setObjVar(this, "burning", 0x00);
    setType(this, 0x0A18);
    break;
  case 0x0A1A:
    setObjVar(this, "burning", 0x00);
    setType(this, 0x0A1D);
    break;
  case 0x0A22:
    setObjVar(this, "burning", 0x00);
    setType(this, 0x0A25);
    break;
  }
  return;
}

TRIGGER( creation )()
{
  return(Q532());
}

TRIGGER( use )(obj user)
{
  Q63J(user);
  return(0x01);
}

TRIGGER( callback , 0x39 )()
{
  int burning = getObjVar(this, "burning");
  if(burning == 0x01)
  {
    int fuel = getObjVar(this, "fuel");
    setObjVar(this, "fuel", fuel - 0x01);
    if(fuel - 0x01 > 0x00)
    {
      callback(this, 0x1E, 0x39);
    }
    else
    {
      Q49C();
    }
  }
  return(0x01);
}

TRIGGER( wasdropped )(obj dropper)
{
  int Q62A = getObjType(this);
  int Q4Q1;
  obj container;
  int burning = getObjVar(this, "burning");
  if(burning == 0x01)
  {
    container = containedBy(this);
    obj Q4O2;
    if(container != NULL())
    {
      Q4O2 = getItemAtSlot(dropper, 0x01);
      if(Q4O2 == this)
      {
        return(0x01);
      }
      Q4O2 = getItemAtSlot(dropper, 0x02);
      if(Q4O2 == this)
      {
        return(0x01);
      }
      Q63J(dropper);
    }
  }
  return(0x01);
}

TRIGGER( message , "ignite" )(obj sender, list args)
{
  obj Q68S = args[0x00];
  int Q527 = Q659(Q68S);
  return(0x00);
}

TRIGGER( message , "douse" )(obj sender, list args)
{
  obj Q68S = args[0x00];
  int Q527 = Q658(Q68S);
  return(0x00);
}

TRIGGER( message , "toggle" )(obj sender, list args)
{
  obj Q68S = args[0x00];
  Q63J(Q68S);
  return(0x00);
}