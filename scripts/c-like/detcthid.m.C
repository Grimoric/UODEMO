// Real-C
#include "ENGINE.hpp"

#include "spelskil.h"

FUNCTION void Q4JF(obj user, loc place)
{
  loc Q4VS = loc( getLocation(user) );
  faceHere(user, getDirectionInternal(Q4VS, place));
  int Q4VV = 0x00;
  if(testSkill(user, 0x0E))
  {
    list Q4VX;
    list Q4VW;
    getMobsInRange(Q4VX, place, 0x02);
    getObjectsInRange(Q4VW, place, 0x02);
    concatList(Q4VX, Q4VW);
    for(int x = 0x00; x < numInList(Q4VX); x ++)
    {
      if(!isMobile(Q4VX[x]))
      {
        if(hasObjVar(Q4VX[x], "trapLevel"))
        {
          barkTo(Q4VX[x], user, "You notice something funny about this object.");
          Q4VV = 0x01;
        }
      }
      if(isInvisible(Q4VX[x]) && !isEditing(Q4VX[x]))
      {
        Q4VV = 0x01;
        setInvisible(Q4VX[x], 0x00);
        if(isPlayer(Q4VX[x]))
        {
          barkTo(Q4VX[x], Q4VX[x], "You have been revealed!");
        }
      }
    }
  }
  if(!Q4VV)
  {
    systemMessage(user, "You can see nothing hidden there.");
  }
  return;
}

TRIGGER( message , "canUseSkill" )(obj sender, list args)
{
  return(0x00);
}

TRIGGER( callback , 0x4D )()
{
  detachScript(this, "detcthid");
  return(0x00);
}

TRIGGER( message , "useSkill" )(obj sender, list args)
{
  callback(this, 0x0A, 0x4D);
  systemMessage(this, "Where will you search?");
  targetLoc(this, this);
  return(0x00);
}

TRIGGER( targetloc )(obj user, loc place, int objtype)
{
  if(!isInMap(place))
  {
    return(0x00);
  }
  Q4JF(user, place)/* semicolon added by the decompiler post-processor */;
  return(0x00);
}