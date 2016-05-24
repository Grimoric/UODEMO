// Real-C
#include "ENGINE.hpp"

TRIGGER( use )(obj user)
{
  list args = list( 0x09 );
  message(user, "usedme", args);
  return(0x01);
}