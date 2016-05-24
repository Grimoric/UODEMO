// Real-C
#include "ENGINE.hpp"

#include "sndfx.h"

TRIGGER( creation )()
{
  if(hasObjVar(this, "working"))
  {
    removeObjVar(this, "working");
  }
  setType(this, 0x108C);
  return(0x00);
}

TRIGGER( use )(obj user)
{
  loc Q4N2 = loc( 0x14A4, 0x0227, 0x00 );
  list Q5DQ;
  int Q5I4;
  if(!hasObjVar(this, "working"))
  {
    setObjVar(this, "working", Q5I4);
    sfx(getLocation(this), 0x4A, 0x00);
    messageToRange(Q4N2, 0x01, "unlocked", Q5DQ);
    setType(this, 0x108D);
    callback(this, 0x01, 0x27);
  }
  return(0x00);
}

TRIGGER( callback , 0x27 )()
{
  setType(this, 0x108E);
  callback(this, 0x01, 0x28);
  return(0x00);
}

TRIGGER( callback , 0x28 )()
{
  setType(this, 0x108C);
  if(hasObjVar(this, "working"))
  {
    removeObjVar(this, "working");
  }
  return(0x00);
}