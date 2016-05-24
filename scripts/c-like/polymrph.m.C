// Real-C
#include "ENGINE.hpp"

#include "polymrphbase.h"

MEMBER int Q59T;

TRIGGER( use )(obj user)
{
  if(!hasObjVar(user, "oldBodyType"))
  {
    Q4MV(user);
  }
  else
  {
    Q4RD(user);
  }
  return(0x00);
}

FUNCTION void Q43S(obj user, int newType)
{
  Q59T = newType;
  Q4M9(this, user);
  return;
}

TRIGGER( message , "castspell" )(obj sender, list args)
{
  obj user = Q4BB(this, args);
  if(!isValid(user))
  {
    return(0x00);
  }
  if(hasObjVar(user, "oldBodyType"))
  {
    Q4RD(user);
    return(0x00);
  }
  if(!Q5YC(user, this))
  {
    return(0x00);
  }
  if((!(hasObjVar(user, "oldBodyType"))) && (Q4LT(user, getLocation(user), this)))
  {
    Q43R(user, Q59T);
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