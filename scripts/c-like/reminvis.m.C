// Real-C
#include "ENGINE.hpp"

#include "spelskil.h"

MEMBER loc where;

TRIGGER( creation )()
{
  where = loc( getLocation(this) );
  callback(this, 0x01, 0x94);
  return(0x01);
}

FUNCTION void Q5MC(obj Q4XN)
{
  setInvisible(Q4XN, 0x00);
  detachScript(Q4XN, "reminvis");
  return;
}

TRIGGER( callback , 0x94 )()
{
  if(getLocation(this) != where)
  {
    Q5MC(this);
  }
  else
  {
    callback(this, 0x01, 0x94);
  }
  return(0x00);
}

TRIGGER( callback , 0x1F )()
{
  Q5MC(this);
  return(0x00);
}

TRIGGER( message , "uninvis" )(obj sender, list args)
{
  Q5MC(this);
  return(0x01);
}