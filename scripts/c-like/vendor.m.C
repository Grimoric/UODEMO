// Real-C
#include "ENGINE.hpp"

FORWARD void Q4LE();

#include "globals.h"

FUNCTION void Q4LE()
{
  list args;
  message(getBackpack(this), "checkStatus", args);
  return;
}

FUNCTION obj Q4SD()
{
  return(getObjVar(this, "owner"));
}

FUNCTION void Q4CG(obj owner)
{
  if(isMurderer(owner))
  {
    int ownerMurderCount = 0x00;
    if(hasObjVar(this, "ownerMurderCount"))
    {
      ownerMurderCount = getObjVar(this, "ownerMurderCount");
    }
    int murderCount = getMurderCount(owner);
    if(murderCount > ownerMurderCount)
    {
      setObjVar(this, "ownerMurderCount", murderCount);
    }
  }
  return;
}

TRIGGER( message , "armageddon" )(obj sender, list args)
{
  int Q52T = args[0x00];
  if(Q52T >= 0x01)
  {
    return(0x00);
  }
  return(0x01);
}

TRIGGER( creation )()
{
  callback(this, 0x7080, 0x90);
  makeInvulnerable(this);
  if(!hasObjVar(this, "myAccount"))
  {
    setObjVar(this, "myAccount", 0x03E8);
  }
  if(!hasObjVar(this, "goldOwnerList"))
  {
    list Q5Z4;
    setObjVar(this, "goldOwnerList", Q5Z4);
    setObjVar(this, "goldQuantityList", Q5Z4);
  }
  if(!hasObjVar(this, "myAccount"))
  {
    setObjVar(this, "myAccount", 0x03E8);
  }
  if(!hasObjVar(this, "myAccount"))
  {
    setObjVar(this, "myAccount", 0x03E8);
  }
  attachScript(getBackpack(this), "vended");
  if(hasObjVar(this, "owner"))
  {
    bark(this, "Greetings " + getName(Q4SD()) + ", I am " + getName(this) + " and will be working for you.");
    Q4CG(Q4SD());
  }
  Q4LE();
  return(0x00);
}

TRIGGER( use )(obj user)
{
  if(isDead(user))
  {
    return(0x00);
  }
  if(!hasObjVar(this, "owner"))
  {
    setObjVar(this, "owner", user);
    bark(this, "I am now working for " + getName(user) + ".");
    Q4CG(user);
  }
  barkTo(this, user, "Take a look at my goods.");
  int Q4Q1 = openContainer(user, getBackpack(this));
  return(0x00);
}

TRIGGER( give )(obj giver, obj givenobj)
{
  if(giver != Q4SD())
  {
    barkTo(this, giver, "I can only accept items from the shop owner.");
    return(0x00);
  }
  Q4CG(giver);
  if(getObjType(givenobj) == 0x0EED)
  {
    int quantity = getQuantity(givenobj);
    deleteObject(givenobj);
    int myAccount = quantity + getObjVar(this, "myAccount");
    setObjVar(this, "myAccount", myAccount);
    barkTo(this, giver, "I'll take that to fund my services.");
    return(0x01);
  }
  if(!canHold(this, givenobj))
  {
    barkTo(this, giver, "I can't carry anymore.");
    return(0x00);
  }
  setObjVar(givenobj, "vendedOwner", giver);
  attachScript(givenobj, "vended");
  int Q4Q1 = putObjContainer(givenobj, getBackpack(this));
  return(0x01);
}

FUNCTION void Q5VS(obj speaker)
{
  if(speaker == Q4SD())
  {
    Q4CG(speaker);
    barkTo(this, speaker, "You own this shop, just take what you want.");
    return;
  }
  systemMessage(speaker, "Select the item you wish to buy. ");
  targetobj(speaker, this);
  return;
}

FUNCTION obj Q64F(obj user, obj owner, int Q63R)
{
  list goldOwnerList;
  list goldQuantityList;
  getObjListVar(goldOwnerList, this, "goldOwnerList");
  getObjListVar(goldQuantityList, this, "goldQuantityList");
  obj Q5BT = NULL();
  for(int i = 0x00; 0x01; i ++)
  {
    if(i >= numInList(goldOwnerList))
    {
      return(Q5BT);
    }
    obj Q4FL = goldOwnerList[i];
    if(owner == Q4FL)
    {
      int Q5EB = goldQuantityList[i];
      if(Q5EB > Q63R)
      {
        setItem(goldQuantityList, Q5EB - Q63R, i);
        Q5EB = Q63R;
      }
      else
      {
        removeItem(goldOwnerList, i);
        removeItem(goldQuantityList, i);
      }
      obj gold = containsObjType(this, 0x0EED);
      if(gold != NULL())
      {
        int Q63T = getQuantity(gold);
        if(Q5EB > Q63T)
        {
          debugMessage("Tried to transfer " + Q5EB + " gold from vendor with only " + Q63T + " gold.");
          Q5EB = Q63T;
          clearList(goldOwnerList);
          clearList(goldQuantityList);
        }
        Q5BT = createNoResObjectIn(0x0EED, getBackpack(user));
        transferGeneric(Q5BT, gold, Q5EB);
        break;
      }
    }
  }
  setObjVar(this, "goldOwnerList", goldOwnerList);
  setObjVar(this, "goldQuantityList", goldQuantityList);
  return(Q5BT);
}

FUNCTION void Q4DP(obj user)
{
  int Q4TX = (getCanCarry(user) - getWeight(user)) * 0x32;
  if(Q4TX <= 0x00)
  {
    barkTo(this, user, "You are overloaded already.");
    return;
  }
  obj gold = Q64F(user, user, Q4TX);
  if(gold == NULL())
  {
    barkTo(this, user, "I am holding no gold for you.");
    return;
  }
  int quantity = getQuantity(gold);
  if(quantity >= Q4TX)
  {
    barkTo(this, user, "Here is " + quantity + " gold, all you can carry.");
  }
  else
  {
    barkTo(this, user, "Here is " + quantity + " gold, all I've collected.");
  }
  return;
}

TRIGGER( oortargetobj )(obj user, obj usedon)
{
  if(isDead(user))
  {
    return(0x01);
  }
  list args;
  if(usedon == NULL())
  {
    return(0x00);
  }
  obj Q63O = getTopmostContainer(usedon);
  if(Q63O == NULL())
  {
    barkTo(this, user, "You can't buy that.");
    return(0x00);
  }
  if(Q63O != this)
  {
    barkTo(this, user, "You can't buy that.");
    return(0x00);
  }
  if(usedon == getBackpack(this))
  {
    barkTo(this, user, "You can't buy that.");
    return(0x00);
  }
  if(!hasScript(usedon, "vended"))
  {
    barkTo(this, user, "This item is not for sale individually.");
    return(0x00);
  }
  if(!isFreelyViewable(usedon, user))
  {
    barkTo(this, user, "You can't buy that.");
    return(0x00);
  }
  args = list( user );
  bark(this, getName(user));
  message(usedon, "purchase", args);
  return(0x00);
}

TRIGGER( objaccess , 0x05 )(obj user, obj usedon)
{
  if(isEditing(user))
  {
    return(0x00);
  }
  if(user == Q4SD())
  {
    Q4CG(user);
    return(0x00);
  }
  barkTo(this, user, "If you'd like to purchase an item, just say so.");
  return(0x01);
}

TRIGGER( objaccess , 0x07 )(obj user, obj usedon)
{
  if(isEditing(user))
  {
    return(0x00);
  }
  if(user == Q4SD())
  {
    Q4CG(user);
    return(0x00);
  }
  barkTo(this, user, "I can only accept items from the shop owner.");
  return(0x01);
}

TRIGGER( objaccess , 0x08 )(obj user, obj usedon)
{
  if(isDead(user))
  {
    return(0x01);
  }
  if(this == usedon)
  {
    return(0x01);
  }
  if(isRealContainer(usedon))
  {
    int Q4Q1 = openContainer(user, usedon);
  }
  return(0x00);
}

FUNCTION int Q4TH(obj item)
{
  int val = 0x00;
  if(isContainer(item))
  {
    list Q4E4;
    getContents(Q4E4, item);
    for(int i = numInList(Q4E4); i > 0x00; i --)
    {
      val = val + Q4TH(Q4E4[0x00]);
      removeItem(Q4E4, 0x00);
    }
  }
  else
  {
    val = getValue(item);
  }
  int Q66Y = 0x00;
  if(hasObjVar(item, "vendedPrice"))
  {
    Q66Y = getObjVar(item, "vendedPrice");
  }
  if(Q66Y > val)
  {
    val = Q66Y;
  }
  return(val);
}

FUNCTION int Q4SP()
{
  int Q5MH = Q4TH(getBackpack(this)) / 0x01F4 + 0x14;
  if(hasObjVar(this, "ownerMurderCount"))
  {
    Q5MH = Q5MH * getObjVar(this, "ownerMurderCount");
  }
  return(Q5MH);
}

FUNCTION int Q4RQ(obj owner)
{
  list goldOwnerList;
  getObjListVar(goldOwnerList, this, "goldOwnerList");
  int quantity = 0x00;
  for(int i = 0x00; i < numInList(goldOwnerList); i ++)
  {
    obj Q4FL = goldOwnerList[i];
    if(owner == Q4FL)
    {
      list goldQuantityList;
      getObjListVar(goldQuantityList, this, "goldQuantityList");
      quantity = goldQuantityList[i];
      break;
    }
  }
  return(quantity);
}

FUNCTION void Q5MO(obj user)
{
  if(!isEditing(user))
  {
    if(Q4SD() != user)
    {
      barkTo(this, user, "Why would you care?  You don't run this shop.");
      return;
    }
  }
  Q4CG(user);
  int quantity = Q4RQ(user);
  int myAccount = getObjVar(this, "myAccount");
  barkTo(this, user, "I am holding " + quantity + " gold for you.");
  int Q5MH = Q4SP();
  barkTo(this, user, "My current charge is " + Q5MH + " gold per day.");
  int Q5DZ = (quantity + myAccount) / Q5MH;
  int Q4NF = Q5DZ / 0x0C;
  if(Q5DZ > 0x00)
  {
    barkTo(this, user, "Including your gold I'm holding, I have enough gold to continue working for " + Q5DZ + " days. (" + Q4NF + " earth days)");
  }
  else
  {
    int Q582 = Q5MH - quantity - myAccount;
    barkTo(this, user, "You need to give me " + Q582 + " gold by the end of the day to retain my services.");
  }
  return;
}

FUNCTION void Q4DB()
{
  bark(this, "I regret nothing!");
  list args;
  message(getBackpack(this), "cleanup", args);
  makeVulnerable(this);
  setCurHP(this, 0x00);
  loseHP(this, 0x2710);
  return;
}

FUNCTION int Q5HG()
{
  int Q5SX = Q4SP();
  int myAccount = getObjVar(this, "myAccount");
  myAccount = myAccount - Q5SX;
  if(myAccount < 0x00)
  {
    obj gold = Q64F(this, Q4SD(), 0x00 - myAccount);
    if(gold != NULL())
    {
      myAccount = myAccount + getQuantity(gold);
      deleteObject(gold);
    }
    if(myAccount < 0x00)
    {
      Q4DB();
      return(0x00);
    }
  }
  setObjVar(this, "myAccount", myAccount);
  return(0x01);
}

TRIGGER( callback , 0x90 )()
{
  callback(this, 0x7080, 0x90);
  return(Q5HG());
}

TRIGGER( speech , "*" )(obj speaker, string arg)
{
  if(!isFreelyViewable(this, speaker))
  {
    return(0x01);
  }
  if(isDead(speaker))
  {
    return(0x01);
  }
  list Q69B;
  split(Q69B, arg);
  int Q5B2 = 0x00;
  int Q453 = 0x00;
  for(int i = 0x00; i < numInList(Q69B); i ++)
  {
    string Q698 = Q69B[i];
    if(Q698 == "vendor")
    {
      Q5B2 = 0x01;
    }
    if(Q698 == "salesman")
    {
      Q5B2 = 0x01;
    }
    if(Q698 == "salesperson")
    {
      Q5B2 = 0x01;
    }
    if(Q698 == "saleswoman")
    {
      Q5B2 = 0x01;
    }
    if(Q698 == "shopkeeper")
    {
      Q5B2 = 0x01;
    }
    if(Q698 == "hi")
    {
      Q5B2 = 0x01;
    }
    if(Q698 == "greetings")
    {
      Q5B2 = 0x01;
    }
    if(Q698 == "hello")
    {
      Q5B2 = 0x01;
    }
    if(Q698 == "yo")
    {
      Q5B2 = 0x01;
    }
    if(Q698 == "hey")
    {
      Q5B2 = 0x01;
    }
    if(Q698 == "hail")
    {
      Q5B2 = 0x01;
    }
    if(Q698 == getName(this))
    {
      Q5B2 = 0x01;
    }
    if(Q698 == "buy")
    {
      Q453 = 0x02;
      break;
    }
    if(Q698 == "purchase")
    {
      Q453 = 0x02;
      break;
    }
    if(Q698 == "browse")
    {
      Q453 = 0x01;
      break;
    }
    if(Q698 == "view")
    {
      Q453 = 0x01;
      break;
    }
    if(Q698 == "look")
    {
      Q453 = 0x01;
      break;
    }
    if(Q698 == "collect")
    {
      Q453 = 0x03;
      break;
    }
    if(Q698 == "gold")
    {
      Q453 = 0x03;
      break;
    }
    if(Q698 == "get")
    {
      Q453 = 0x03;
      break;
    }
    if(Q698 == "status")
    {
      Q453 = 0x04;
      break;
    }
    if(Q698 == "info")
    {
      Q453 = 0x04;
      break;
    }
  }
  if(!Q5B2)
  {
    return(0x01);
  }
  int Q4ID = getDirectionInternal(getLocation(this), getLocation(speaker));
  faceHere(this, Q4ID);
  if(Q453 == 0x00)
  {
    return(0x01);
  }
  switch(Q453)
  {
  case 0x01:
    barkTo(this, speaker, "Take a look at my wares.");
    int Q4Q1 = openContainer(speaker, getBackpack(this));
    break;
  case 0x02:
    Q5VS(speaker);
    break;
  case 0x03:
    Q4DP(speaker);
    break;
  case 0x04:
    Q5MO(speaker);
    break;
  }
  return(0x00);
}

TRIGGER( objectloaded )()
{
  callback(this, 0x7080, 0x90);
  callback(this, 0x00, 0x81);
  return(0x01);
}

TRIGGER( callback , 0x81 )()
{
  if(getCreationLoc(this) != getLocation(this))
  {
    int Q4Q1 = teleport(this, getCreationLoc(this));
  }
  Q4LE();
  return(0x01);
}

TRIGGER( message , "housedecay" )(obj sender, list args)
{
  Q4DB();
  return(0x01);
}

TRIGGER( destroyed )()
{
  if(hasObjVar(this, "multi"))
  {
    obj Q5AK = getObjVar(this, "multi");
    if(isValid(Q5AK))
    {
      list args;
      appendToList(args, this);
      message(Q5AK, "vendordelete", args);
    }
  }
  return(0x01);
}