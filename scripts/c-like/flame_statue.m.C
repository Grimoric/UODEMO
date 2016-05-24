// Real-C
#include "ENGINE.hpp"

TRIGGER( creation )()
{
  setType(this, 0x07A3);
  return(0x00);
}

TRIGGER( enterrange , 0x03 )(obj target)
{
  list Q5DQ;
  loc Q5C0 = loc( getX(getLocation(this)), getY(getLocation(this)), (getZ(getLocation(this)) + 0x01) );
  if(getObjType(this) == 0x07A3)
  {
    callback(this, 0x02, 0x01);
    setType(this, 0x01);
    messageToRange(getLocation(this), 0x05, "blowUp", Q5DQ);
    doLocAnimation(getLocation(this), 0x3709, 0x02, 0x38, 0x00, 0x00);
  }
  return(0x01);
}

TRIGGER( leaverange , 0x07 )(obj target)
{
  list Q67G;
  list Q5DQ;
  loc Q5C0 = loc( getX(getLocation(this)), getY(getLocation(this)), (getZ(getLocation(this)) - 0x01) );
  getMobsInRange(Q67G, getLocation(this), 0x05);
  if((numInList(Q67G) == 0x00))
  {
    if(getObjType(this) == 0x1228)
    {
      doLocAnimation(getLocation(this), 0x3709, 0x02, 0x38, 0x00, 0x00);
      setType(this, 0x01);
      callback(this, 0x02, 0x02);
    }
  }
  return(0x01);
}

TRIGGER( message , "blowUp" )(obj sender, list args)
{
  loc Q5C0 = loc( getX(getLocation(this)), getY(getLocation(this)), (getZ(getLocation(this)) + 0x01) );
  if(!(sender == this) && (getObjType(this) == 0x07A3))
  {
    callback(this, 0x02, 0x01);
    setType(this, 0x01);
    doLocAnimation(getLocation(this), 0x3709, 0x02, 0x38, 0x00, 0x00);
  }
  return(0x00);
}

TRIGGER( callback , 0x01 )()
{
  if(getObjType(this) == 0x01)
  {
    setType(this, 0x1228);
  }
  return(0x00);
}

TRIGGER( callback , 0x02 )()
{
  if(getObjType(this) == 0x01)
  {
    setType(this, 0x07A3);
  }
  return(0x00);
}