// Real-C
#include "ENGINE.hpp"

TRIGGER( use )(obj user)
{
  bark(this, "I have been used.");
  callback(this, 0x05, 0x01);
  return(0x00);
}

TRIGGER( callback , 0x01 )()
{
  bark(this, "Five seconds have past since I have been used");
  return(0x00);
}