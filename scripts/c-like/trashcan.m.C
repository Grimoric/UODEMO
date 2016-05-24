// Real-C
#include "ENGINE.hpp"

TRIGGER( give )(obj giver, obj givenobj)
{
  deleteObject(givenobj);
  return(0x00);
}