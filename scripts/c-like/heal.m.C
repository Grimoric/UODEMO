// Real-C
#include "ENGINE.hpp"

#include "healbase.h"

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
  if(Q49V(user, usedon, 0x00))
  {
    if(!Q5YC(user, this))
    {
      return(0x00);
    }
    if(Q4LT(user, getLocation(usedon), this))
    {
      Q4K9(user, usedon);
    }
    else
    {
      Q4RD(user);
    }
  }
  else
  {
    systemMessage(user, "Target cannot be seen.");
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
  Q4K9(user, target);
  return(0x00);
}