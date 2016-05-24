// Real-C
#include "ENGINE.hpp"

#include "globals.h"

FUNCTION obj Q4TJ()
{
  obj Q63O = getTopmostContainer(this);
  if(Q63O == NULL())
  {
    return(NULL());
  }
  if(!hasScript(Q63O, "vendor"))
  {
    return(NULL());
  }
  return(Q63O);
}

FUNCTION void cleanup()
{
  if(isContainer(this))
  {
    list Q4E4;
    getContents(Q4E4, this);
    while(numInList(Q4E4))
    {
      list args;
      message(Q4E4[0x00], "cleanup", args);
      removeItem(Q4E4, 0x00);
    }
  }
  removeObjVar(this, "vendedOwner");
  removeObjVar(this, "vendedPrice");
  removeObjVar(this, "description");
  detachScript(this, "vended");
  return;
}

FUNCTION obj Q4SD()
{
  if(hasObjVar(this, "vendedOwner"))
  {
    return(getObjVar(this, "vendedOwner"));
  }
  return(getObjVar(Q4TJ(), "owner"));
}

FUNCTION int Q4SH()
{
  if(!hasObjVar(this, "vendedPrice"))
  {
    return(0x00 - 0x01);
  }
  return(getObjVar(this, "vendedPrice"));
}

FUNCTION int Q4YS(obj b)
{
  switch(getObjType(b))
  {
  case 0x0FEF:
  case 0x0FF0:
  case 0x0FF1:
  case 0x0FF2:
    return(0x01);
    break;
  default:
    return(0x00);
    break;
  }
  return(0x00);
}

FUNCTION int Q4Z0(obj t)
{
  if(hasObjVar(t, "isLocked"))
  {
    barkTo(Q4SD(), Q4SD(), "Locked items may not be made not-for-sale.");
    return(0x01);
  }
  if(isContainer(t))
  {
    if(!isRealContainer(t))
    {
      switch(getObjType(t))
      {
      case 0x0EFA:
      case 0x0E3B:
        break;
      default:
        return(0x01);
      }
    }
    else
    {
      list Q4E4;
      getContents(Q4E4, t);
      for(int i = numInList(Q4E4); i; i --)
      {
        if((!hasScript(Q4E4[0x00], "vended")) || ((!hasObjVar(Q4E4[0x00], "vendedPrice"))))
        {
          if(!Q4Z0(Q4E4[0x00]))
          {
            barkTo(Q4SD(), Q4SD(), "To be not for sale, all contents of a container must be for sale.");
            return(0x00);
          }
        }
        removeItem(Q4E4, 0x00);
      }
    }
    return(0x01);
  }
  if(Q4YS(t))
  {
    return(0x01);
  }
  obj Q47J = containedBy(t);
  if(!isValid(Q47J))
  {
    bark(Q4SD(), "It's not in a container.");
    return(0x00);
  }
  if(hasObjVar(Q47J, "vendedPrice"))
  {
    return(0x01);
  }
  barkTo(Q4SD(), Q4SD(), "Only the following items may be made not-for-sale: books, containers, keyrings, and items in a for-sale container.");
  return(0x00);
}

FUNCTION void checkStatus()
{
  if(isContainer(this))
  {
    list Q4E4;
    getContents(Q4E4, this);
    while(numInList(Q4E4))
    {
      list args;
      if(!hasScript(Q4E4[0x00], "vended"))
      {
        attachScript(Q4E4[0x00], "vended");
      }
      message(Q4E4[0x00], "checkStatus", args);
      removeItem(Q4E4, 0x00);
    }
  }
  if(Q4SH() < 0x00)
  {
    if(!Q4Z0(this))
    {
      setObjVar(this, "vendedPrice", getValue(this));
    }
  }
  return;
}

TRIGGER( textentry , 0x1A )(obj sender, int button, string text)
{
  if(sender != Q4SD())
  {
    return(0x00);
  }
  if(!isFreelyViewable(this, sender))
  {
    return(0x00);
  }
  if(button == 0x00)
  {
    if(hasObjVar(this, "vendedPrice"))
    {
      removeObjVar(this, "vendedPrice");
    }
    scriptTrig(this, 0x1C, Q4SD());
    return(0x00);
  }
  int price = text;
  if(price < 0x00)
  {
    systemMessage(Q4SD(), "Only containers can be set to 'not for sale.'");
  }
  if(price > 0x000F4240)
  {
    price = 0x000F4240;
  }
  string Q5WX = price;
  string Q5G1 = text;
  removePrefix(text, Q5WX);
  if(Q5G1 == text)
  {
    if(Q4Z0(this))
    {
      price = 0x00 - 0x01;
    }
    else
    {
      return(0x00);
    }
  }
  removePrefix(text, " ");
  removePrefix(text, " ");
  removePrefix(text, ",");
  removePrefix(text, " ");
  removePrefix(text, " ");
  if(text == "")
  {
    removeObjVar(this, "description");
  }
  else
  {
    setObjVar(this, "description", text);
  }
  if(price < 0x00)
  {
    if(hasObjVar(this, "vendedPrice"))
    {
      removeObjVar(this, "vendedPrice");
    }
  }
  else
  {
    setObjVar(this, "vendedPrice", price);
  }
  scriptTrig(this, 0x1C, Q4SD());
  return(0x00);
}

TRIGGER( wasgotten )(obj getter)
{
  if(isEditing(getter))
  {
    return(0x01);
  }
  if(Q4SH() == 0x00)
  {
    return(0x01);
  }
  if(getter != Q4SD())
  {
    systemMessage(getter, "To purchase items, say 'vendor buy'.");
    return(0x00);
  }
  return(0x01);
}

TRIGGER( wasdropped )(obj dropper)
{
  if(Q4TJ() == NULL())
  {
    setDefaultReturn(0x01);
    cleanup();
  }
  return(0x01);
}

TRIGGER( creation )()
{
  if(containedBy(this) != NULL())
  {
    if(hasScript(containedBy(this), "vendor"))
    {
      return(0x00);
    }
  }
  systemMessage(Q4SD(), "Type in a price and description for " + getName(this) + ": (ESC=Not for sale)");
  textEntry(this, Q4SD(), 0x1A, 0x00, "Type in a price for " + getName(this) + ".");
  return(0x00);
}

TRIGGER( message , "checkStatus" )(obj sender, list args)
{
  checkStatus();
  return(0x00);
}

TRIGGER( lookedat )(obj looker)
{
  string Q5KK = Q4SH();
  if(Q4SH() == 0x00)
  {
    Q5KK = "FREE!";
  }
  if(Q4SH() < 0x00)
  {
    Q5KK = "Not for sale.";
    if(!Q4Z0(this))
    {
      setObjVar(this, "vendedPrice", getValue(this));
      Q5KK = Q4SH();
    }
  }
  string desc = "";
  if(hasObjVar(this, "description"))
  {
    desc = getObjVar(this, "description");
    desc = desc + ".  ";
  }
  barkTo(this, looker, desc + "Cost:" + Q5KK);
  return(0x01);
}

TRIGGER( give )(obj giver, obj givenobj)
{
  if(giver != Q4SD())
  {
    barkTo(Q4TJ(), giver, "I can only accept items from the shop owner.");
    return(0x00);
  }
  setObjVar(givenobj, "vendedOwner", giver);
  attachScript(givenobj, "vended");
  return(0x01);
}

TRIGGER( message , "cleanup" )(obj sender, list args)
{
  cleanup();
  return(0x00);
}

TRIGGER( message , "purchase" )(obj sender, list args)
{
  obj user = args[0x00];
  int Q4Q1;
  if(user == Q4SD())
  {
    systemMessage(user, "You take the item.");
    Q4Q1 = putObjContainer(this, getBackpack(user));
    cleanup();
    return(0x00);
  }
  obj vendor = Q4TJ();
  int price = Q4SH();
  if(price < 0x00)
  {
    systemMessage(user, "This item is not for sale.");
    return(0x00);
  }
  if(price == 0x00)
  {
    systemMessage(user, "You take " + getName(this) + ".");
    Q4Q1 = putObjContainer(this, getBackpack(user));
    cleanup();
    return(0x00);
  }
  obj gold = NULL();
  if(price > 0x00)
  {
    if(price <= getMoney(user))
    {
      gold = transferGenericToContainer(vendor, user, 0x0EED, price);
      systemMessage(user, "You purchase " + getName(this) + ".");
    }
    else
    {
      if(price <= amtGoldInBank(user))
      {
        Q4Q1 = withdrawFromBank(user, price);
        gold = transferGenericToContainer(vendor, user, 0x0EED, price);
        systemMessage(user, "You purchase " + getName(this) + " with the gold in your bank account.");
      }
      else
      {
        systemMessage(user, "You cannot afford this item.");
        return(0x00);
      }
    }
  }
  list goldOwnerList;
  list goldQuantityList;
  if(hasObjListVar(vendor, "goldOwnerList"))
  {
    getObjListVar(goldOwnerList, vendor, "goldOwnerList");
    getObjListVar(goldQuantityList, vendor, "goldQuantityList");
  }
  for(int i = 0x00; 0x01; i ++)
  {
    if(i >= numInList(goldOwnerList))
    {
      append(goldOwnerList, Q4SD());
      append(goldQuantityList, price);
      break;
    }
    obj Q4FL = goldOwnerList[i];
    if(Q4SD() == Q4FL)
    {
      int Q5WE = goldQuantityList[i];
      setItem(goldQuantityList, Q5WE + price, i);
      break;
    }
  }
  setObjVar(vendor, "goldOwnerList", goldOwnerList);
  setObjVar(vendor, "goldQuantityList", goldQuantityList);
  Q4Q1 = putObjContainer(this, getBackpack(user));
  cleanup();
  return(0x00);
}

TRIGGER( objectloaded )()
{
  if(hasObjVar(this, "owner"))
  {
    if(!hasScript(this, "magicitem"))
    {
      removeObjVar(this, "owner");
    }
  }
  setObjVar(this, "vendedOwner", Q4SD());
  if(hasObjVar(this, "price"))
  {
    int price = getObjVar(this, "price");
    setObjVar(this, "vendedPrice", price);
    removeObjVar(this, "price");
  }
  if(Q4TJ() == NULL())
  {
    cleanup();
    return(0x01);
  }
  return(0x01);
}