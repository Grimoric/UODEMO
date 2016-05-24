// Real-C
#include "ENGINE.hpp"

#include "sumdaembase.h"

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
  if(!Q5YC(user, this))
  {
    return(0x00);
  }
  if(Q4LT(user, getLocation(user), this))
  {
    Q4MG(user);
  }
  else
  {
    Q4RD(user);
  }
  return(0x00);
}

TRIGGER( creation )()
{
  return(0x00);
}