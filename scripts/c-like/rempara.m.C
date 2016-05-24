// Real-C
#include "ENGINE.hpp"

#include "spelskil.h"

TRIGGER( creation )()
{
  systemMessage(this, "You can not move!");
  return(0x01);
}

FUNCTION void Q5MD(obj Q4XN)
{
  setMobFlag(Q4XN, 0x02, 0x00);
  systemMessage(Q4XN, "You can move!");
  detachScript(Q4XN, "rempara");
  handleHealthGain(this);
  return;
}

TRIGGER( callback , 0x0D )()
{
  Q5MD(this);
  return(0x00);
}

TRIGGER( washit )(obj attacker, int damamt)
{
  Q5MD(this);
  return(0x00);
}

TRIGGER( ishealthy )()
{
  return(0x00);
}