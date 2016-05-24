// Real-C
#include "ENGINE.hpp"

#include "sndfx.h"

MEMBER obj feathers;
MEMBER obj shafts;

TRIGGER( message , "makearrows" )(obj sender, list args)
{
  feathers = args[0x00];
  shafts = args[0x01];
  list fletching = list( 0x0F3F, 0x1BFB );
  selectType(this, this, 0x28, "Choose an item to make.", fletching);
  return(0x01);
}

TRIGGER( typeselected , 0x28 )(obj user, int listindex, int objtype, int objhue)
{
  obj Q47G = getBackpack(this);
  int Q4OY;
  int Q5RS;
  int i;
  int Q565;
  int Q4Q1;
  obj Q5C5;
  obj owner = getTopmostContainer(feathers);
  if(isMobile(owner) && (owner != this))
  {
    detachScript(this, "makingarrows");
    return(0x00);
  }
  owner = getTopmostContainer(shafts);
  if(isMobile(owner) && (owner != this))
  {
    detachScript(this, "makingarrows");
    return(0x00);
  }
  if((objtype == 0x0F3F) || (objtype == 0x1BFB))
  {
    Q4Q1 = getResource(Q4OY, feathers, "feathers", 0x03, 0x02);
    Q4Q1 = getResource(Q5RS, shafts, "wood", 0x03, 0x02);
    Q565 = Q5RS;
    if(Q565 > Q4OY)
    {
      Q565 = Q4OY;
    }
    Q5C5 = createNoResObjectIn(objtype, Q47G);
    returnResourcesToBank(feathers, Q565, "feathers");
    transferResources(Q5C5, shafts, Q565, "wood");
    Q4Q1 = putObjContainer(Q5C5, Q47G);
    i = Q565;
    if(objtype == 0x0F3F)
    {
      if(i == 0x01)
      {
        systemMessage(user, "You make an arrow and put it in your backpack.");
      }
      if(i > 0x01)
      {
        systemMessage(user, "You make some arrows and put them in your backpack.");
      }
      sfx(getLocation(user), 0x4F, 0x00);
    }
    if(objtype == 0x1BFB)
    {
      if(i == 0x01)
      {
        systemMessage(user, "You make a bolt and put it in your backpack.");
      }
      if(i > 0x01)
      {
        systemMessage(user, "You make some bolts and put them in your backpack.");
      }
      sfx(getLocation(user), 0x4F, 0x00);
    }
  }
  Q4Q1 = getResource(Q4OY, feathers, "feathers", 0x03, 0x02);
  Q4Q1 = getResource(Q5RS, shafts, "wood", 0x03, 0x02);
  if(Q4OY < 0x01)
  {
    deleteObject(feathers);
  }
  if(Q5RS < 0x01)
  {
    deleteObject(shafts);
  }
  detachScript(this, "makingarrows");
  return(0x00);
}