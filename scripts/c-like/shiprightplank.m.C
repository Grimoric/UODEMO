// Real-C
#include "ENGINE.hpp"

#include "shipplank.h"

TRIGGER( creation )()
{
  int Q5NC = Q5S7(this, 0x00, "shiprightplank");
  return(0x01);
}

TRIGGER( enterrange , 0x00 )(obj target)
{
  return(Q5S5(0x00, this, target));
}

TRIGGER( ooruse )(obj user)
{
  if(isDead(user))
  {
    Q5RW(0x00, this, user);
    return(0x00);
  }
  int Q5NC = Q5SA(0x00, this, user);
  if(!Q5S7(this, 0x00, "shiprightplank"))
  {
    Q5S6(getMultiSlaveId(this));
  }
  return(0x00);
}

TRIGGER( use )(obj user)
{
  if(isDead(user))
  {
    Q5RW(0x00, this, user);
    return(0x00);
  }
  int Q5NC = Q5SA(0x00, this, user);
  if(!Q5S7(this, 0x00, "shiprightplank"))
  {
    Q5S6(getMultiSlaveId(this));
  }
  return(0x01);
}

TRIGGER( multirecycle )(int oldtype, int newtype)
{
  Q5RX(0x00, this, oldtype);
  return(0x01);
}