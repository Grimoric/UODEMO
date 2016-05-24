// Real-C
#include "ENGINE.hpp"

#include "magclockbase.h"

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
  targetObj(user, this);
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
    if(Q4A0(user, usedon))
    {
      if(!Q5YC(user, this))
      {
        return(0x00);
      }
      if(Q4LT(user, getLocation(usedon), this))
      {
        Q4KM(user, usedon);
      }
      else
      {
        Q4RD(user);
      }
    }
    else
    {
      systemMessage(user, "Target must be an unlocked chest.");
    }
  }
  return(0x00);
}

TRIGGER( creation )()
{
  return(0x00);
}