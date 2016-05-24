// Real-C
#include "ENGINE.hpp"

#include "globals.h"

MEMBER int state;
MEMBER int fuel;
MEMBER loc dest;

TRIGGER( creation )()
{
  state = 0x00;
  fuel = 0x64;
  return(0x00);
}

FUNCTION void Q52B()
{
  loc Q5U8 = loc( getLocation(this) );
  changeLoc(Q5U8, 0x00, 0x00, 0x0A);
  dest = loc( Q5U8 );
  changeLoc(dest, random(0x00 - 0x02, 0x02), random(0x00 - 0x02, 0x02), 0x20);
  doMissile_Loc2Loc(Q5U8, dest, 0x36E4, 0x05, 0x00, 0x00);
  shortCallback(this, 0x03, 0x2F);
  state = 0x01;
  return;
}

TRIGGER( use )(obj user)
{
  if(state == 0x00)
  {
    systemMessage(user, "You launch a firework!");
    state = 0x01;
    Q52B();
    return(0x00);
  }
  systemMessage(user, "Wait until the one in the air has exploded first.");
  return(0x00);
}

TRIGGER( callback , 0x2F )()
{
  state = 0x00;
  int Q465 = 0x373A + (0x10 * random(0x00, 0x03));
  doLocAnimation(dest, Q465, 0x0A, 0x10, 0x00, 0x00);
  fuel --;
  string Q58D = fuel;
  Q58D = "a fireworks wand with " + Q58D + " charges.";
  setObjVar(this, "lookAtText", Q58D);
  if(fuel < 0x00)
  {
    deleteObject(this);
    return(0x00);
  }
  return(0x00);
}