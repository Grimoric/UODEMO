// Real-C
#include "ENGINE.hpp"

#include "globals.h"

TRIGGER( use )(obj user)
{
  systemMessage(user, "Choose a location to create your forge.");
  systemMessage(user, "You will not be able to put it in your backpack afterwards.");
  targetLoc(user, this);
  return(0x01);
}

TRIGGER( targetobj )(obj user, obj usedon)
{
  if(usedon == NULL())
  {
    return(0x00);
  }
  systemMessage(user, "Targetobj called");
  setObjVar(this, "ObjSelected", 0x01);
  loc Q5YL = loc( getLocation(usedon) );
  int Q4QH = getTileHeight(0x0FB1);
  setZ(Q5YL, getZ(Q5YL) + getHeight(usedon));
  int Q4OF = canExistAt(Q5YL, Q4QH, 0x01);
  obj Q4EX;
  if(Q4OF == 0x07)
  {
    Q4EX = requestCreateObjectAt(0x0FB1, Q5YL);
    if(Q4EX != NULL())
    {
      deleteObject(this);
    }
    else
    {
      systemMessage(user, "Can't create an forge there.");
      return(0x00);
    }
  }
  else
  {
    systemMessage(user, "Can't create an forge there.");
    return(0x00);
  }
  return(0x01);
}

TRIGGER( targetloc )(obj user, loc place, int objtype)
{
  if(!isInMap(place))
  {
    return(0x00);
  }
  systemMessage(user, "Targetloc called");
  if(!(hasObjVar(this, "ObjSelected")))
  {
    int Q4VQ = getTileHeight(0x0FB1);
    int Q4OF = canExistAt(place, Q4VQ, 0x01);
    obj Q4EX;
    if(Q4OF == 0x07)
    {
      Q4EX = requestCreateObjectAt(0x0FB1, place);
      if(Q4EX != NULL())
      {
        deleteObject(this);
      }
      else
      {
        systemMessage(user, "Can't create an forge there.");
        return(0x00);
      }
    }
    else
    {
      systemMessage(user, "Can't create an forge there.");
      return(0x00);
    }
  }
  removeObjVar(this, "ObjSelected");
  return(0x01);
}