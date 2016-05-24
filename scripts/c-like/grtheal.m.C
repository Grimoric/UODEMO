// Real-C
#include "ENGINE.hpp"

#include "grthealbase.h"

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
  Q48A(user, this);
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
      Q4K5(user, usedon);
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
  Q4K5(user, target);
  return(0x00);
}