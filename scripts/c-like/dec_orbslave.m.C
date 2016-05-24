// Real-C
#include "ENGINE.hpp"

#include "globals.h"

MEMBER obj Q5GO;
MEMBER loc Q5GM;

TRIGGER( creation )()
{
  Q5GM = loc( 0x144F, 0x0261, 0x03 );
  list Q5GN;
  getObjectsAt(Q5GN, Q5GM);
  for(int i = 0x00; i < numInList(Q5GN); i ++)
  {
    if(hasScript(Q5GN[i], "dec_orbmaster"))
    {
      Q5GO = Q5GN[i];
    }
  }
  return(0x00);
}

TRIGGER( use )(obj user)
{
  list Q5DQ;
  message(Q5GO, "makeMeTalk", Q5DQ);
  return(0x00);
}

TRIGGER( speech , "*" )(obj speaker, string arg)
{
  list args = list( arg );
  message(Q5GO, "newAddition", args);
  return(0x00);
}