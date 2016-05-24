// Real-C
#include "ENGINE.hpp"

#include "sk_table.h"

TRIGGER( message , "canUseSkill" )(obj sender, list args)
{
  return(0x00);
}

TRIGGER( callback , 0x4D )()
{
  detachScript(this, "stealing");
  return(0x00);
}

FUNCTION int Q4ZF(obj item)
{
  if(getObjType(item) == 0x0FA6)
  {
    return(0x01);
  }
  if(isSpellbook(item))
  {
    return(0x01);
  }
  return(0x00);
}

TRIGGER( message , "useSkill" )(obj sender, list args)
{
  callback(this, 0x0A, 0x4D);
  int Q477;
  Q477 = getNumTargets(this);
  if(Q477 > 0x00)
  {
    systemMessage(this, "You cannot attempt to steal in the heat of combat!");
    return(0x00);
  }
  systemMessage(this, "Which item will you attempt to steal?");
  targetObj(this, this);
  return(0x00);
}

TRIGGER( oortargetobj )(obj user, obj usedon)
{
  if(usedon == NULL())
  {
    return(0x00);
  }
  if(isDead(this))
  {
    return(0x00);
  }
  obj Q63P = getTopmostContainer(usedon);
  int Q5F2 = getDistanceInTiles(getLocation(usedon), getLocation(this));
  if(getDistanceInTiles(getLocation(usedon), getLocation(this)) > 0x01)
  {
    systemMessage(this, "You must be standing next to an item to steal it.");
    return(0x00);
  }
  obj owner = NULL();
  if(Q63P == NULL())
  {
    if(isMobile(usedon))
    {
      owner = usedon;
    }
  }
  else
  {
    if(isMobile(Q63P))
    {
      owner = Q63P;
    }
  }
  obj Q5H6;
  if(owner != NULL())
  {
    if(owner == this)
    {
      barkTo(this, this, "You catch yourself red-handed.");
      return(0x00);
    }
    if(isPlayer(owner))
    {
      if(isEditing(owner) || isGameMaster(owner) || isCounselor(owner))
      {
        systemMessage(this, "You can't steal from this.");
        return(0x00);
      }
    }
    if(hasScript(owner, "vendor"))
    {
      systemMessage(this, "You can't steal from vendors.");
      return(0x00);
    }
    Q5H6 = getBackpack(owner);
    if(Q5H6 == NULL())
    {
      systemMessage(user, "You can't steal that.");
      return(0x00);
    }
  }
  int Q5YS = 0x01;
  if(owner != NULL())
  {
    if(owner == usedon)
    {
      list Q4YL;
      clearList(Q4YL);
      getContents(Q4YL, Q5H6);
      int Q538 = numInList(Q4YL);
      if(Q538 == 0x00)
      {
        systemMessage(this, "You reach into " + getName(owner) + "'s backpack... but find it's empty.");
        return(0x00);
      }
      usedon = Q4YL[random(0x00, Q538 - 0x01)];
      systemMessage(this, "You reach into " + getName(owner) + "'s backpack... and try to take something.");
    }
    else
    {
      obj Q5Z4 = containedBy(usedon);
      while(Q5Z4 != Q5H6)
      {
        if(Q5Z4 == NULL())
        {
          systemMessage(user, "You can't steal that.");
          return(0x00);
        }
        Q5Z4 = containedBy(Q5Z4);
      }
      Q5YS = 0x03;
    }
  }
  if(!isMoveable(usedon, this))
  {
    systemMessage(this, "You could not carry this item.");
    return(0x00);
  }
  if(!canHold(this, usedon))
  {
    systemMessage(this, "You could not carry this item.");
    return(0x00);
  }
  if(getValue(usedon) == 0x00)
  {
    systemMessage(this, "This item has no value to you.");
    return(0x00);
  }
  if(!isFreelyViewable(usedon, user))
  {
    systemMessage(user, "You can't steal that.");
    return(0x00);
  }
  if(Q4ZF(usedon))
  {
    systemMessage(user, "You can't steal that.");
    return(0x00);
  }
  if(containedBy(usedon) != NULL())
  {
    if(Q4ZF(usedon))
    {
      systemMessage(user, "You can't steal that.");
      return(0x00);
    }
  }
  int Q68B = getWeight(usedon);
  int quantity = getQuantity(usedon);
  if((Q68B > 0x0A) && (quantity <= 0x01) && (owner != NULL()))
  {
    systemMessage(this, "This item is too heavy to steal from someone's backpack.");
    return(0x00);
  }
  int Q569 = Q68B;
  if(Q569 > 0x0A)
  {
    Q569 = 0x0A;
  }
  list Q57W;
  int Q5TF = 0x64 + getSkillLevelReal(this, 0x21);
  int Q4IB = Q569 * Q5YS * 0x1388 / Q5TF;
  int Q691 = witnessCrime(getLocation(usedon), this, owner, getName(usedon), Q4IB, (getValue(usedon) + 0x04) / 0x05, 0x01);
  changeKarma(this, 0x00 - 0x1388);
  if(!getCompileFlag(0x01))
  {
    criminalActAdvanced(this, owner, 0x01, 0x06, 0x18 * 0x02, 0x00);
  }
  if(Q691 > 0x00)
  {
    if(!getCompileFlag(0x01))
    {
      setCriminal(this, 0x01E0);
    }
    Q4IB = Q569 * Q5YS * 0x1E + 0x64;
    if(testAndLearnSkill(this, 0x21, Q4IB, 0x32) <= 0x00)
    {
      systemMessage(this, "You fail to steal the item.");
      return(0x00);
    }
  }
  systemMessage(this, "You successfully steal the item.");
  if(owner == NULL())
  {
    setCriminal(this, 0x01E0);
  }
  else
  {
    if(!canBeFreelyAggressedBy(owner, this))
    {
      int Q4Q1 = addToObjVarListSet(this, "crimeVictimList", owner);
    }
  }
  int Q64H = 0x01;
  if(quantity > 0x01)
  {
    int Q64I = random(0x01, 0x0A);
    if(Q64I > Q68B)
    {
      Q64H = quantity;
    }
    else
    {
      Q64H = (quantity * Q64I) / Q68B;
      if(Q64H < 0x01)
      {
        Q64H = 0x01;
      }
    }
  }
  obj Q59G = getBackpack(this);
  if(Q64H < quantity)
  {
    obj Q4EV = createNoResObjectIn(getObjType(usedon), Q59G);
    transferGeneric(Q4EV, usedon, Q64H);
    return(0x01);
  }
  int Q4EL = putObjContainer(usedon, Q59G);
  return(0x01);
}