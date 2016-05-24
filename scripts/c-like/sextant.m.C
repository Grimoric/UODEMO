// Real-C
#include "ENGINE.hpp"

#include "globals.h"

TRIGGER( use )(obj user)
{
  int Q435 = 0x052B;
  int Q436 = 0x0658;
  int Q56C = 0x1400;
  int Q56D = 0x1000;
  int west = 0x00;
  int north = 0x00;
  string Q53T = " E ";
  string Q52A = " S ";
  loc Q66V = loc( getLocation(user) );
  int Q66Z = getX(Q66V);
  int Q670 = getY(Q66V);
  Q66Z = Q66Z - Q435;
  Q670 = Q670 - Q436;
  int Q5RP = (0x0168 * Q66Z) / Q56C;
  int Q5RQ = (0x0168 * Q670) / Q56D;
  if(Q5RP > 0x1400)
  {
    barkTo(user, user, "You can't use a sextant here.");
    return(0x00);
  }
  if(Q5RQ > 0x1000)
  {
    barkTo(user, user, "You can't use a sextant here.");
    return(0x00);
  }
  int Q57C = ((0x5460 * Q66Z) / Q56C) % 0x3C;
  int Q57D = ((0x5460 * Q670) / Q56D) % 0x3C;
  if(Q5RP < 0x00)
  {
    west = 0x01;
    Q53T = " W ";
    Q5RP = Q5RP * (0x00 - 0x01);
    Q57C = Q57C * (0x00 - 0x01);
  }
  if(Q5RP > 0xB4)
  {
    west = 0x01;
    Q53T = " W ";
    Q5RP = 0x0168 - Q5RP;
    if(Q57C > 0x00)
    {
      Q5RP --;
    }
  }
  if(Q5RQ < 0x00)
  {
    north = 0x01;
    Q52A = " N ";
    Q5RQ = Q5RQ * (0x00 - 0x01);
    Q57D = Q57D * (0x00 - 0x01);
  }
  if(Q5RQ > 0xB4)
  {
    north = 0x01;
    Q52A = " N ";
    Q5RQ = 0x0168 - Q5RQ;
    if(Q57D > 0x00)
    {
      Q5RQ --;
    }
  }
  string Q5X0 = Q5RP;
  string Q5X1 = Q5RQ;
  string Q5WT = Q57C;
  string Q5WU = Q57D;
  barkTo(user, user, Q5X1 + "o " + Q5WU + "'" + Q52A + Q5X0 + "o " + Q5WT + "'" + Q53T);
  return(0x00);
}