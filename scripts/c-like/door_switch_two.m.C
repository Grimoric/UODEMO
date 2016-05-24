// Real-C
#include "ENGINE.hpp"

TRIGGER( use )(obj user)
{
  loc Q4N2 = loc( 0x14AF, 0x0244, 0x00 );
  list Q5DQ;
  if(!hasObjVar(this, "working"))
  {
    setObjVar(this, "working", 0x01);
    messageToRange(Q4N2, 0x02, "unlocked", Q5DQ);
    setType(this, 0x1090);
    callback(this, 0x02, 0x01);
  }
  return(0x00);
}

TRIGGER( callback , 0x01 )()
{
  if(hasObjVar(this, "working"))
  {
    removeObjVar(this, "working");
  }
  if(getObjType(this) == 0x1090)
  {
    setType(this, 0x108F);
  }
  return(0x00);
}