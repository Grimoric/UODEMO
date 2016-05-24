// Real-C
#include "ENGINE.hpp"

#include "sk_table.h"

FUNCTION obj Q4SE(obj Q68D)
{
  obj Q491 = getBackpack(Q68D);
  if(Q491 == NULL())
  {
    Q491 = createGlobalObjectIn(0x0E75, Q68D);
    if(!isValid(Q491))
    {
      return(NULL());
    }
    if(!equipObj(Q491, Q68D, 0x15))
    {
      deleteObject(Q491);
      return(NULL());
    }
  }
  return(Q491);
}

FUNCTION int Q4ZV(obj Q5HY, obj pet)
{
  list Q48U;
  if(!hasObjListVar(pet, "myBoss"))
  {
    return(0x00);
  }
  getObjListVar(Q48U, pet, "myBoss");
  if(!isInList(Q48U, Q5HY))
  {
    return(0x00);
  }
  if(!hasObjVar(pet, "myLoyalty"))
  {
    return(0x00);
  }
  int myLoyalty = getObjVar(pet, "myLoyalty");
  if(myLoyalty < 0x01)
  {
    return(0x00);
  }
  return(0x01);
}

TRIGGER( use )(obj user)
{
  int Q4Q1;
  obj Q491 = Q4SE(this);
  if(Q491 == NULL())
  {
    return(0x00);
  }
  if(isDead(user))
  {
    return(0x00);
  }
  if(isEditing(user) || Q4ZV(user, this))
  {
    Q4Q1 = openContainer(user, Q491);
  }
  else
  {
    if(testSkill(user, 0x1C))
    {
      Q4Q1 = openContainer(user, Q491);
    }
    else
    {
      ebarkTo(user, user, "You fail to peek into the animal's pack.");
    }
  }
  return(0x00);
}

FUNCTION int Q4V0(obj Q57P)
{
  if(isDead(Q57P))
  {
    return(0x00);
  }
  if(isEditing(Q57P) || Q4ZV(Q57P, this))
  {
    return(0x01);
  }
  return(0x00);
}

TRIGGER( objaccess , 0x05 )(obj user, obj usedon)
{
  return(!Q4V0(user))/* semicolon added by the decompiler post-processor */;
}

TRIGGER( objaccess , 0x07 )(obj user, obj usedon)
{
  return(!Q4V0(user))/* semicolon added by the decompiler post-processor */;
}

TRIGGER( objaccess , 0x08 )(obj user, obj usedon)
{
  if(usedon == this)
  {
    return(0x01);
  }
  if(isContainer(usedon) && Q4V0(user))
  {
    int Q4Q1 = openContainer(user, usedon);
  }
  return(0x00);
}

TRIGGER( give )(obj giver, obj givenobj)
{
  obj Q491 = Q4SE(this);
  if(Q491 == NULL())
  {
    return(0x00);
  }
  if(!canHold(Q491, givenobj))
  {
    if(!isEditing(giver))
    {
      return(0x00);
    }
  }
  if(isEditing(giver) || Q4ZV(giver, this))
  {
    int Q52Q = putObjContainer(givenobj, Q491);
    return(0x01);
  }
  return(0x00);
}