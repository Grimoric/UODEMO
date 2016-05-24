// Real-C
#include "ENGINE.hpp"

#include "globals.h"

TRIGGER( use )(obj user)
{
  list Q5DQ;
  loc trapLocation = loc( 0x154C, 0xBB, 0x00 );
  messageToRange(trapLocation, 0x05, "reset", Q5DQ);
  return(0x01);
}