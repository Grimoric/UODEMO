// Real-C
#include "ENGINE.hpp"

#include "spelskil.h"

MEMBER list Q5HT;
MEMBER obj Q57L;
MEMBER int Q5NQ;

FUNCTION int Q4J6(obj user, loc place)
{
  int Q5NC = 0x00;
  loc Q4VS = loc( getLocation(user) );
  faceHere(user, getDirectionInternal(Q4VS, place));
  clearList(Q5HT);
  list Q5HQ;
  getMobsInRange(Q5HQ, place, 0x02);
  int Q63V = numInList(Q5HQ);
  beginSequence();
  Q57L = user;
  Q5NQ = 0x00;
  int Q49M = 0x00;
  for(int x = 0x00; x < Q63V; x ++)
  {
    obj Q5HY = Q5HQ[x];
    if(Q50G(Q5HY))
    {
      if(hasScript(Q5HY, "reflctor"))
      {
        doLightning(user);
        detachScript(Q5HY, "reflctor");
        int Q527 = Q429(this, Q57L, Q57L, 0x02, 0x01);
        if(!Q49M)
        {
          Q49M = 0x01;
          Q5UK(user, Q5HY, 0x02, 0x00);
        }
      }
      else
      {
        Q5NC = 0x01;
        doLightning(Q5HY);
        if(!Q49M)
        {
          Q49M = 0x01;
          Q5UK(user, Q5HY, 0x02, 0x00);
        }
        callback(this, 0x01, 0x19);
        appendToList(Q5HT, Q5HY);
      }
    }
  }
  endSequence(0x01);
  sfx(place, 0x29, 0x00);
  Q5UR(this, Q5NC);
  return(Q5NC);
}

TRIGGER( callback , 0x19 )()
{
  int Q527 = Q42C(0x02, this, Q57L, Q5HT, 0x02);
  Q5UQ(this);
  return(0x00);
}