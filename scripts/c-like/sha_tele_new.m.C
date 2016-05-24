// Real-C
#include "ENGINE.hpp"

#include "globals.h"

TRIGGER( creation )()
{
  setType(this, 0x01);
  return(0x00);
}

TRIGGER( enterrange , 0x01 )(obj target)
{
  if(!hasObjVar(this, "working"))
  {
    obj Q5YN = target;
    setObjVar(this, "working", Q5YN);
    setType(this, 0x373A);
    callBack(this, 0x05, 0x24);
  }
  return(0x01);
}

TRIGGER( callback , 0x24 )()
{
  obj Q5YN;
  list Q67G;
  loc Q648;
  int Q4QI = 0x01;
  loc Q59R = loc( getLocation(this) );
  if(!hasObjVar(this, "working"))
  {
    Q4QI = 0x00;
  }
  Q5YN = getObjVar(this, "working");
  removeObjVar(this, "working");
  clearList(Q67G);
  getMobsInRange(Q67G, Q59R, 0x02);
  if(!isInList(Q67G, Q5YN))
  {
    Q4QI = 0x00;
  }
  if(!hasObjVar(this, "toLocation"))
  {
    Q4QI = 0x00;
  }
  if(Q4QI)
  {
    Q648 = loc( getObjVar(this, "toLocation") );
    if(!teleport(Q5YN, Q648))
    {
      setType(this, 0x01);
      return(0x01);
    }
    setType(this, 0x01);
    return(0x00);
  }
  setType(this, 0x01);
  return(0x00);
}