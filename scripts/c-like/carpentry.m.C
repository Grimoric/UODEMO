// Real-C
#include "ENGINE.hpp"

#include "itemmanip.h"

MEMBER obj Q62D;
MEMBER obj Q62B;
MEMBER int Q5C5;
MEMBER int Q697;
MEMBER int Q694;
MEMBER int Q512;

FORWARD void Q5QQ();
FORWARD void Q5QS();
FORWARD void Q5QR();

TRIGGER( use )(obj user)
{
  if(hasObjVar(this, "inUse"))
  {
    systemMessage(user, "Someone else is using that.");
    return(0x00);
  }
  else
  {
    setObjVar(this, "inUse", 0x00);
    callback(this, 0x3C, 0x1B);
  }
  targetObj(user, this);
  return(0x01);
}

TRIGGER( targetobj )(obj user, obj usedon)
{
  if(usedon == NULL())
  {
    if(hasObjVar(this, "inUse"))
    {
      removeObjVar(this, "inUse");
    }
    return(0x00);
  }
  Q512 = 0x00;
  Q62D = user;
  Q62B = usedon;
  int Q4Q1;
  Q4Q1 = getResource(Q694, Q62B, "wood", 0x03, 0x02);
  int Q62C = getObjType(Q62B);
  switch(Q62C)
  {
  case 0x1BD7:
  case 0x1BD8:
  case 0x1BD9:
  case 0x1BDA:
  case 0x1BDB:
  case 0x1BDC:
  case 0x1BDD:
  case 0x1BDE:
  case 0x1BDF:
  case 0x1BE0:
  case 0x1BE1:
  case 0x1BE2:
    if(isAtHome(usedon))
    {
      systemMessage(user, "You can't use that wood, it belongs to someone else.");
      return(0x00);
    }
    if(hasObjVar(Q62B, "inUse"))
    {
      barkTo(Q62B, Q62D, "Someone is using that wood.");
      return(0x00);
    }
    else
    {
      setObjVar(Q62B, "inUse", 0x01);
      attachscript(Q62B, "removeinuse");
      callback(Q62B, 0x3C, 0x1B);
    }
    int Q5TE = testSkillReal(user, 0x0B);
    if(Q5TE > 0x00)
    {
      list carpentry = list( 0x0B56, "chairs", 0x0B7C, "tables", 0x0E42, "miscellaneous" );
      selectType(Q62D, this, 0x04, "choose a category", carpentry);
    }
    else
    {
      systemMessage(user, "Carpentry failed.");
      if(hasObjVar(Q62B, "inUse"))
      {
        removeObjVar(Q62B, "inUse")/* semicolon added by the decompiler post-processor */;
      }
      if(hasObjVar(this, "inUse"))
      {
        removeObjVar(this, "inUse");
      }
      return(0x00);
    }
    break;
  default:
    barkTo(Q62B, Q62D, "can't make anything from that");
    break;
  }
  return(0x00);
}

TRIGGER( typeselected , 0x04 )(obj user, int listindex, int objtype, int objhue)
{
  switch(listindex)
  {
  case 0x01:
    Q5QQ();
    break;
  case 0x02:
    Q5QS();
    break;
  case 0x03:
    Q5QR();
    break;
  default:
    if(hasObjVar(Q62B, "inUse"))
    {
      removeObjVar(Q62B, "inUse")/* semicolon added by the decompiler post-processor */;
    }
    if(hasObjVar(this, "inUse"))
    {
      removeObjVar(this, "inUse");
    }
    return(0x00);
    break;
  }
  if(hasObjVar(Q62B, "inUse"))
  {
    removeObjVar(Q62B, "inUse")/* semicolon added by the decompiler post-processor */;
  }
  if(hasObjVar(this, "inUse"))
  {
    removeObjVar(this, "inUse");
  }
  return(0x00);
}

FUNCTION void Q5QQ()
{
  list chairs = list( 0x0B5E, "stool takes 9 wood", 0x0A2A, "stool takes 9 wood", 0x0B5A, "chair takes 13 wood", 0x0B56, "chair takes 13 wood", 0x0B4E, "chair takes 15 wood", 0x0B52, "chair takes 15 wood", 0x0B2C, "bench takes 17 wood", 0x0B2F, "chair takes 17 wood", 0x0B33, "throne takes 19 wood" );
  selectType(Q62D, this, 0x05, "choose a chair", chairs);
  return;
}

FUNCTION void Q5QS()
{
  list tables = list( 0x0B34, "table takes 17 wood", 0x0B4A, "writing table takes 17 wood", 0x0B7C, "table takes 23 wood", 0x0B7D, "table takes 27 wood" );
  selectType(Q62D, this, 0x06, "choose a table", tables);
  return;
}

FUNCTION void Q5QR()
{
  list Q4AF = list( 0x1B7A, "wooden shield takes 9 wood", 0x0E7D, "box takes 9 wood", 0x0E7E, "small crate takes 9 wood", 0x0E3E, "crate takes 11 wood", 0x0E3C, "crate takes 13 wood", 0x0E42, "chest takes 15 wood", 0x0A9E, "shelf takes 21 wood", 0x0A51, "armoire takes 25 wood", 0x0A53, "armoire takes 25 wood" );
  selectType(Q62D, this, 0x07, "choose an item", Q4AF);
  return;
}

TRIGGER( typeselected , 0x05 )(obj user, int listindex, int objtype, int objhue)
{
  Q5C5 = objtype;
  switch(objtype)
  {
  case 0x0B5E:
  case 0x0A2A:
    Q697 = 0x08;
    break;
  case 0x0B5A:
  case 0x0B56:
    Q697 = 0x0C;
    break;
  case 0x0B4E:
  case 0x0B52:
    Q697 = 0x0E;
    break;
  case 0x0B2C:
  case 0x0B2F:
    Q697 = 0x10;
    break;
  case 0x0B33:
    Q697 = 0x12;
    break;
  default:
    if(hasObjVar(Q62B, "inUse"))
    {
      removeObjVar(Q62B, "inUse")/* semicolon added by the decompiler post-processor */;
    }
    if(hasObjVar(this, "inUse"))
    {
      removeObjVar(this, "inUse");
    }
    return(0x00);
    break;
  }
  if(Q697 + 0x01 > Q694)
  {
    barkTo(Q62B, Q62D, "Not enough wood to make that.");
    Q5QQ();
    return(0x00);
  }
  Q512 = 0x01;
  sfx(getLocation(this), 0x023D, 0x00);
  systemMessage(Q62D, "Put it where?");
  targetLoc(Q62D, this);
  return(0x00);
}

TRIGGER( typeselected , 0x06 )(obj user, int listindex, int objtype, int objhue)
{
  Q5C5 = objtype;
  switch(objtype)
  {
  case 0x0B34:
  case 0x0B4A:
    Q697 = 0x10;
    break;
  case 0x0B7C:
    Q697 = 0x16;
    break;
  case 0x0B7D:
    Q697 = 0x1A;
    break;
  default:
    if(hasObjVar(Q62B, "inUse"))
    {
      removeObjVar(Q62B, "inUse")/* semicolon added by the decompiler post-processor */;
    }
    if(hasObjVar(this, "inUse"))
    {
      removeObjVar(this, "inUse");
    }
    return(0x00);
    break;
  }
  if(Q697 + 0x01 > Q694)
  {
    barkTo(Q62B, Q62D, "Not enough wood to make that.");
    Q5QS();
    return(0x00);
  }
  Q512 = 0x01;
  sfx(getLocation(this), 0x023D, 0x00);
  systemMessage(Q62D, "Put it where?");
  targetLoc(Q62D, this);
  return(0x00);
}

TRIGGER( typeselected , 0x07 )(obj user, int listindex, int objtype, int objhue)
{
  Q5C5 = objtype;
  switch(objtype)
  {
  case 0x1B7A:
  case 0x0E7D:
  case 0x0E7E:
    Q697 = 0x08;
    break;
  case 0x0E3E:
    Q697 = 0x0A;
    break;
  case 0x0E3C:
    Q697 = 0x0C;
    break;
  case 0x0E42:
    Q697 = 0x0E;
    break;
  case 0x0A9E:
    Q697 = 0x14;
    break;
  case 0x0A51:
  case 0x0A53:
    Q697 = 0x18;
    break;
  default:
    if(hasObjVar(Q62B, "inUse"))
    {
      removeObjVar(Q62B, "inUse")/* semicolon added by the decompiler post-processor */;
    }
    if(hasObjVar(this, "inUse"))
    {
      removeObjVar(this, "inUse");
    }
    return(0x00);
    break;
  }
  if(Q697 + 0x01 > Q694)
  {
    barkTo(Q62B, Q62D, "Not enough wood to make that.");
    Q5QR();
    return(0x00);
  }
  Q512 = 0x01;
  sfx(getLocation(this), 0x023D, 0x00);
  systemMessage(Q62D, "Put it where?");
  targetLoc(Q62D, this);
  return(0x00);
}

TRIGGER( targetloc )(obj user, loc place, int objtype)
{
  if(!isInMap(place))
  {
    if(hasObjVar(this, "inUse"))
    {
      removeObjVar(this, "inUse");
    }
    return(0x00);
  }
  if(Q512)
  {
    Q512 = 0x00;
    debugMessage("before canExistAt");
    if(canExistAt(place, getTileHeight(Q5C5), 0x00) != 0x07)
    {
      debugMessage("inside canExistAt");
      systemMessage(user, "You cannot create that there.");
      return(0x00);
    }
    if(getDistanceInTiles(place, getLocation(user)) > 0x03)
    {
      systemMessage(user, "That is too far away.");
      return(0x00);
    }
    int Q693 = 0x00;
    int Q4Q1 = getResource(Q693, Q62B, "wood", 0x03, 0x02);
    if(Q693 < (Q697 + 0x01))
    {
      systemMessage(user, "You don't have enough wood to make that.");
      return(0x00);
    }
    obj Q4F0 = createNoResObjectAt(Q5C5, place);
    transferResources(Q4F0, Q62B, Q697, "wood");
    setObjVar(Q4F0, "chopable", 0x01);
    switch(Q5C5)
    {
    case 0x0E7D:
    case 0x0E7E:
      overloadWeight(Q4F0, 0x01);
      break;
    case 0x0B5E:
    case 0x0A2A:
    case 0x0B5A:
    case 0x0B56:
    case 0x0B4E:
    case 0x0B52:
    case 0x0B2F:
    case 0x0B33:
      overloadWeight(Q4F0, 0x01);
      break;
    case 0x0B2C:
    case 0x0B34:
    case 0x0B4A:
    case 0x0B7C:
    case 0x0B7D:
      overloadWeight(Q4F0, 0x01);
      break;
    case 0x0E3E:
    case 0x0E3C:
    case 0x0E42:
    case 0x0A9E:
    case 0x0A51:
    case 0x0A53:
      overloadWeight(Q4F0, 0x01);
      break;
    default:
      break;
    }
    switch(Q5C5)
    {
    case 0x0E7D:
    case 0x0E42:
      if(testSkill(user, 0x25))
      {
        int Q634 = getSkillLevel(user, 0x25);
        systemMessage(user, "Your tinker skill was sufficient to make the item lockable.");
        attachScript(Q4F0, "locked");
        setObjVar(Q4F0, "lockLevel", (Q634 * 0x02));
        setObjVar(Q4F0, "playerMade", 0x01);
        obj key = createNoResObjectIn(0x100E, Q4F0);
        list Q665 = list( Q4F0 );
        setObjVar(key, "whatIUnlock", Q665);
      }
    }
    obj kindling = createNoResObjectAt(0x0DE1, place);
    transferResources(kindling, Q62B, 0x01, "wood");
    int Q695;
    Q4Q1 = getResource(Q695, Q62B, "wood", 0x03, 0x02);
    if(Q695 < 0x01)
    {
      deleteObject(Q62B);
    }
  }
  if(hasObjVar(Q62B, "inUse"))
  {
    removeObjVar(Q62B, "inUse")/* semicolon added by the decompiler post-processor */;
  }
  if(hasObjVar(this, "inUse"))
  {
    removeObjVar(this, "inUse");
  }
  if(Q46J(user, this))
  {
    deleteObject(this);
  }
  return(0x00);
}

TRIGGER( callback , 0x1B )()
{
  if(hasObjVar(this, "inUse"))
  {
    removeObjVar(this, "inUse");
  }
  return(0x00);
}