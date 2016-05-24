// Real-C
#include "ENGINE.hpp"

TRIGGER( use )(obj user)
{
  list a = list( this, "wobble", "llama" );
  loc b = loc( getLocation(this) );
  bark(this, "sending this wobble llama oss list");
  multiMessageToLoc(b, "flop", a);
  return(0x01);
}

TRIGGER( message , "flop" )(obj sender, list args)
{
  barkint(numInList(args));
  printList(args);
  return(0x01);
}