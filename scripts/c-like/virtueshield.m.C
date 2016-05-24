// Real-C
#include "ENGINE.hpp"

#include "sndfx.h"

TRIGGER( callback , 0x1E )()
{
  bark(this, "You are unworthy of wielding me.");
  loc where = loc( getLocation(this) );
  doLocAnimation(where, 0x3728, 0x0A, 0x0A, 0x00, 0x00);
  sfx(where, 0x01FE, 0x00);
  deleteObject(this);
  return(0x01);
}

FUNCTION void Q4HV()
{
  shortcallback(this, 0x01, 0x1E);
  return;
}

TRIGGER( message , "destroyVirtueShield" )(obj sender, list args)
{
  Q4HV();
  return(0x01);
}

TRIGGER( creation )()
{
  int Q4Q1 = makeValueless(this);
  return(0x01);
}

TRIGGER( objectloaded )()
{
  int Q4Q1 = makeValueless(this);
  return(0x01);
}