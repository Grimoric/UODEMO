// Real-C
#include "ENGINE.hpp"

TRIGGER( use )(obj user)
{
  setCurHP(user, 0x00);
  return(0x01);
}