// Real-C
#include "ENGINE.hpp"

#include "globals.h"

TRIGGER( use )(obj user)
{
  loc Q67V = loc( 0x15A5, 0xAD, 0x00 );
  list Q5DQ;
  if(!hasObjVar(this, "working"))
  {
    if(!hasObjVar(this, "allow"))
    {
      systemMessage(user, "The lever seems to be blocked by a mechanism of some sort.");
      messageToRange(getLocation(this), 0x08, "showoff", Q5DQ);
      return(0x00);
    }
    setObjVar(this, "working", 0x01);
    messageToRange(Q67V, 0x0A, "vanish", Q5DQ);
    setType(this, 0x108D);
    callback(this, 0x01, 0x24);
  }
  return(0x00);
}

TRIGGER( callback , 0x24 )()
{
  int Q5A2 = getObjType(this);
  int newType;
  switch(Q5A2)
  {
  case 0x108D:
    newType = 0x108C;
    callback(this, 0x01, 0x24);
    break;
  case 0x108C:
    newType = 0x108E;
    removeObjVar(this, "working");
    break;
  }
  setType(this, newType);
  return(0x00);
}