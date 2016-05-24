// Real-C
#include "ENGINE.hpp"

#include "globals.h"

TRIGGER( creation )()
{
  setType(this, 0x1122);
  return(0x00);
}

TRIGGER( enterrange , 0x00 )(obj target)
{
  loc Q4D3 = loc( 0x1431, 0x0257, 0x00 );
  list Q5DQ;
  messageToRange(Q4D3, 0x01, "chest_unlocked", Q5DQ);
  messageToRange(getLocation(this), 0x03, "wall_trap_check", Q5DQ);
  callback(this, 0x02, 0x23);
  setType(this, 0x1123);
  callback(this, 0x1E, 0x24);
  return(0x01);
}

TRIGGER( callback , 0x23 )()
{
  setType(this, 0x1122);
  return(0x00);
}

TRIGGER( callback , 0x24 )()
{
  loc Q4D3 = loc( 0x1431, 0x0257, 0x00 );
  list Q5DQ;
  messageToRange(Q4D3, 0x01, "chest_locked", Q5DQ);
  return(0x00);
}