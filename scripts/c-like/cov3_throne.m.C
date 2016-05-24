// Real-C
#include "ENGINE.hpp"

TRIGGER( enterrange , 0x02 )(obj target)
{
  systemMessage(target, "A small piece of paper seems to be wedged beneath the throne.");
  return(0x01);
}

TRIGGER( use )(obj user)
{
  systemMessage(user, "You seem not to be able to free the note, but upon it you see the writing: 3-4-1-5.");
  return(0x00);
}