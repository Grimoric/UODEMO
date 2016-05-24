// Real-C
#include "ENGINE.hpp"

#include "globals.h"

TRIGGER( use )(obj user)
{
  list args = list( user );
  obj Q5TP;
  Q5TP = getMultiSlaveId(this);
  message(Q5TP, "getTreasure", args);
  return(0x00);
}