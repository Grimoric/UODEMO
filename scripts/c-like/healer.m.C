// Real-C
#include "ENGINE.hpp"

#include "sndfx.h"

TRIGGER( enterrange , 0x03 )(obj target)
{
  if(!canSeeObj(this, target))
  {
    return(0x01);
  }
  if(isDead(target))
  {
    loc Q4GT = loc( getLocation(target) );
    loc Q5H2 = loc( getLocation(this) );
    int Q6A5 = getZ(Q4GT) - getZ(Q5H2);
    if(Q6A5 < 0x00)
    {
      Q6A5 = Q6A5 * (0x00 - 0x01);
    }
    if(Q6A5 > 0x04)
    {
      return(0x01);
    }
    if(isOnAnyMulti(target))
    {
      return(0x01);
    }
    if(!isFacingPerson(this, target))
    {
      int Q4ID = getDirection(Q5H2, Q4GT);
      faceHere(this, Q4ID);
    }
    if(!getCompileFlag(0x01))
    {
      if(getNotorietyLevel(this) > (0x00 - 0x01))
      {
        if(getNotorietyLevel(target) < (0x00 - 0x02))
        {
          bark(this, "Thou'rt not a decent and good person. I shall not resurrect thee.");
          return(0x01);
        }
        if(getNotorietyLevel(target) < 0x00)
        {
          bark(this, "Thou hast strayed from the path of virtue, but thou still deservest a second chance.");
        }
      }
    }
    else
    {
      if(getKarmaLevel(this) > (0x00 - 0x01))
      {
        if(isMurderer(target))
        {
          bark(this, "Thou'rt not a decent and good person. I shall not resurrect thee.");
          return(0x01);
        }
        if(getKarmaLevel(target) < 0x00)
        {
          bark(this, "Thou hast strayed from the path of virtue, but thou still deservest a second chance.");
        }
      }
    }
    animateMobile(this, 0x10, 0x07, 0x01, 0x00, 0x00);
    doMobAnimation(this, 0x376A, 0x09, 0x20, 0x00, 0x00);
    sfx(getLocation(this), 0x01F2, 0x00);
    Q426(this, target, 0x01, "It is possible for you to be resurrected here by this healer. Do you wish to try?");
    return(0x00);
  }
  return(0x01);
}