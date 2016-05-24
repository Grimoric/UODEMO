// Real-C
#include "ENGINE.hpp"

#include "globals.h"

TRIGGER( creation )()
{
  setObjVar(this, "woolOnSheep", 0x1E);
  return(0x01);
}

TRIGGER( time , "hour:**" )()
{
  int value = 0x00;
  int Q4Y0 = 0x00;
  int Q56A = 0x1D;
  if(!hasObjVar(this, "woolOnSheep"))
  {
    return(0x01);
  }
  value = getObjVar(this, "woolOnSheep");
  if(value < Q56A)
  {
    Q4Y0 = value + 0x01;
    setObjVar(this, "woolOnSheep", Q4Y0);
  }
  else
  {
    if(getObjType(this) == 0xDF)
    {
      obj Q617 = requestCreateObjectIn(0x0DF8, this);
      transferResources(this, Q617, 0x1E, "cloth");
      setObjVar(this, "woolOnSheep", 0x1E);
      setType(this, 0xCF);
      deleteObject(Q617);
    }
  }
  return(0x01);
}