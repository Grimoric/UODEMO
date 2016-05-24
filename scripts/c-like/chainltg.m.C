// Real-C
#include "ENGINE.hpp"

#include "chainltgbase.h"

TRIGGER( use )(obj user)
{
  Q4M9(this, user);
  return(0x00);
}

TRIGGER( message , "castspell" )(obj sender, list args)
{
  obj user = Q4BB(this, args);
  if(!isValid(user))
  {
    return(0x00);
  }
  Q5RD(user, this);
  Q4WN(user, this, 0x02);
  return(0x00);
}

TRIGGER( targetloc )(obj user, loc place, int objtype)
{
  if(!Q4C8(user, this))
  {
    return(0x01);
  }
  if(!isInMap(place))
  {
    return(0x00);
  }
  if(!canSeeLoc(user, place))
  {
    systemMessage(user, "Target cannot be seen.");
    return(0x00);
  }
  if(getDistanceInTiles(getLocation(user), place) > 0x0C)
  {
    systemMessage(user, "Target is too far away.");
    return(0x00);
  }
  if(!Q5YC(user, this))
  {
    return(0x00);
  }
  if(Q4LT(user, place, this))
  {
    Q4J6(user, place);
  }
  else
  {
    Q4RD(user);
  }
  return(0x00);
}

TRIGGER( creation )()
{
  return(0x00);
}