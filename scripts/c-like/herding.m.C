// Real-C
#include "ENGINE.hpp"

TRIGGER( use )(obj user)
{
  systemMessage(this, "BUG");
  return(0x00);
}