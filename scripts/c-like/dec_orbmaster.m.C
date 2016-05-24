// Real-C
#include "ENGINE.hpp"

#include "globals.h"

MEMBER list Q5GL;

TRIGGER( creation )()
{
  clearList(Q5GL);
  Q5GL = list( "The ghostly shadows have..." );
  return(0x00);
}

TRIGGER( use )(obj user)
{
  bark(this, Q5GL[random(0x00, numInList(Q5GL) - 0x01)]);
  return(0x00);
}

TRIGGER( speech , "*" )(obj speaker, string arg)
{
  appendToList(Q5GL, arg);
  if(numInList(Q5GL) > 0x0A)
  {
    removeItem(Q5GL, 0x00);
  }
  return(0x00);
}

TRIGGER( message , "makeMeTalk" )(obj sender, list args)
{
  bark(sender, Q5GL[random(0x00, numInList(Q5GL) - 0x01)]);
  return(0x00);
}

TRIGGER( message , "newAddition" )(obj sender, list args)
{
  string Q45J = args[0x00];
  appendToList(Q5GL, Q45J);
  if(numInList(Q5GL) > 0x00)
  {
    removeItem(Q5GL, 0x00);
  }
  return(0x00);
}