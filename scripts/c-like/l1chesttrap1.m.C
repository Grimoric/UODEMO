// Real-C
#include "ENGINE.hpp"

TRIGGER( use )(obj user)
{
  list Q5DQ;
  messageToRange(getLocation(this), 0x03, "trapCheck", Q5DQ);
  return(0x01);
}