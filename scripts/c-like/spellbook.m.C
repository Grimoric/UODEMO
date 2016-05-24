// Real-C
#include "ENGINE.hpp"

#include "spelskil.h"

TRIGGER( objectloaded )()
{
  if(hasScript(this, "shipclaim"))
  {
    return(0x01);
  }
  list Q4E4;
  obj player = getTopmostContainer(this);
  if(!isMobile(player))
  {
    player = NULL();
  }
  getContents(Q4E4, this);
  int num = numInList(Q4E4);
  for(int i = 0x00; i < num; i ++)
  {
    obj it = Q4E4[i];
    if(!Q501(it))
    {
      int Q655 = 0x00;
      if(player != NULL())
      {
        Q655 = toMobile(it, player);
      }
      if(!Q655)
      {
        deleteObject(it);
      }
    }
  }
  return(0x01);
}

TRIGGER( give )(obj giver, obj givenobj)
{
  if(!Q501(givenobj))
  {
    return(0x00);
  }
  list spells;
  getContents(spells, this);
  int Q5EZ = numInList(spells);
  for(int i = 0x00; i < Q5EZ; i ++)
  {
    obj spell = spells[i];
    if(getMiscData(spell) == getMiscData(givenobj))
    {
      return(0x00);
    }
  }
  obj Q5CW = createGlobalObjectIn(getObjType(givenobj), this);
  destroyOne(givenobj);
  return(0x00);
}