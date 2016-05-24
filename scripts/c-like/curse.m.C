// Real-C
#include "ENGINE.hpp"

#include "cursebase.h"

TRIGGER( use )(obj user)
{
  Q4M9(this, user);
  return(0x00);
}

TRIGGER( message , "castspell" )(obj sender, list args)
{
  obj user = Q4BB(this, args);
  if(!isValid(user))
  {
    return(0x00);
  }
  Q5RD(user, this);
  Q4WO(user, this);
  return(0x00);
}

TRIGGER( targetobj )(obj user, obj usedon)
{
  if(!Q4C8(user, this))
  {
    return(0x01);
  }
  if(usedon == NULL())
  {
    return(0x00);
  }
  if(Q5UM(user, usedon, 0x0C))
  {
    if(!Q5YC(user, this))
    {
      return(0x00);
    }
    if(Q4LT(user, getLocation(usedon), this))
    {
      if(hasScript(usedon, "reflctor"))
      {
        doMobAnimation(usedon, 0x37B9, 0x0A, 0x05, 0x00, 0x00);
        Q4JE(usedon, user, 0x01);
        detachScript(usedon, "reflctor");
      }
      else
      {
        Q4JE(user, usedon, 0x00);
      }
    }
    else
    {
      Q4RD(user);
    }
  }
  return(0x00);
}

TRIGGER( creation )()
{
  return(0x00);
}

TRIGGER( callback , 0x49 )()
{
  obj user = getObjVar(this, "user");
  obj target = getObjVar(this, "target");
  if(Q41X(user, target))
  {
    Q4JE(target, user, 0x01);
    Q5MF(target);
  }
  else
  {
    Q4JE(user, target, 0x00);
  }
  return(0x00);
}