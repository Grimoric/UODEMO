// Real-C
#include "ENGINE.hpp"

#include "globals.h"

MEMBER list Q641;

TRIGGER( message , "towncrieradd" )(obj sender, list args)
{
  obj it = args[0x00];
  if(!isInList(Q641, it))
  {
    appendToList(Q641, it);
  }
  return(0x01);
}

TRIGGER( message , "towncrierremove" )(obj sender, list args)
{
  obj it = args[0x00];
  if(isInList(Q641, it))
  {
    removeSpecificItem(Q641, it);
  }
  return(0x01);
}

FUNCTION void Q55I(string Q56W, list args)
{
  int num = numInList(Q641);
  for(int i = 0x00; i < num; i ++)
  {
    obj it = Q641[i];
    multiMessage(it, Q56W, args);
  }
  return;
}

TRIGGER( message , "towncrieraddmessage" )(obj sender, list args)
{
  Q55I("towncrieraddmessage", args);
  return(0x01);
}

TRIGGER( message , "towncrierremovemessage" )(obj sender, list args)
{
  Q55I("towncrierremovemessage", args);
  return(0x01);
}

TRIGGER( decay )(int oldvalue, int newvalue)
{
  return(0x00);
}