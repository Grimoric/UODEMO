// Real-C
#include "ENGINE.hpp"

#include "spelskil.h"

FUNCTION int Q4LH(obj user, loc place)
{
  int Q5NC = 0x00;
  loc Q4VS = loc( getLocation(user) );
  int success = 0x00;
  int walldur = Q4RN(user, Q42S(this));
  faceHere(user, getDirectionInternal(Q4VS, place));
  int Q4HC = getX(place) - getX(Q4VS);
  int Q4HD = getY(place) - getY(Q4VS);
  loc Q5ID = loc( place );
  loc Q5IE = loc( place );
  loc Q5IF = loc( place );
  loc Q5IG = loc( place );
  int Q67X;
  int Q44V = Q4HC;
  if(Q44V < 0x00)
  {
    Q44V = 0x00 - Q44V;
  }
  int Q44W = Q4HD;
  if(Q44W < 0x00)
  {
    Q44W = 0x00 - Q44W;
  }
  if(Q44V < Q44W)
  {
    setX(Q5ID, getX(place) + 0x01);
    setX(Q5IE, getX(place) - 0x01);
    setX(Q5IF, getX(place) + 0x02);
    setX(Q5IG, getX(place) - 0x02);
    Q67X = 0x3967;
  }
  else
  {
    setY(Q5ID, getY(place) + 0x01);
    setY(Q5IE, getY(place) - 0x01);
    setY(Q5IF, getY(place) + 0x02);
    setY(Q5IG, getY(place) - 0x02);
    Q67X = 0x3979;
  }
  doLocAnimation(place, 0x376A, 0x09, 0x0A, 0x00, 0x00);
  doLocAnimation(Q5ID, 0x376A, 0x09, 0x0A, 0x00, 0x00);
  doLocAnimation(Q5IE, 0x376A, 0x09, 0x0A, 0x00, 0x00);
  doLocAnimation(Q5IF, 0x376A, 0x09, 0x0A, 0x00, 0x00);
  doLocAnimation(Q5IG, 0x376A, 0x09, 0x0A, 0x00, 0x00);
  int Q5EC = 0x02;
  if(Q657(user, 0x37C3, place, Q67X, Q5EC, walldur, 0x01, 0x01) || Q657(user, 0x37C3, Q5ID, Q67X, Q5EC, walldur, 0x01, 0x02) || Q657(user, 0x37C3, Q5IE, Q67X, Q5EC, walldur, 0x01, 0x03) || Q657(user, 0x37C3, Q5IF, Q67X, Q5EC, walldur, 0x01, 0x04) || Q657(user, 0x37C3, Q5IG, Q67X, Q5EC, walldur, 0x01, 0x05))
  {
    sfx(place, 0x020B, 0x00);
    Q5NC = 0x01;
  }
  if(!getCompileFlag(0x01))
  {
    Q554(user, walldur);
  }
  Q5UQ(this);
  return(Q5NC);
}