// Real-C
#include "ENGINE.hpp"

#include "globals.h"

TRIGGER( speech , "0" )(obj speaker, string arg)
{
  disableBehaviors(this);
  faceHere(this, 0x00);
  return(0x00);
}

TRIGGER( speech , "1" )(obj speaker, string arg)
{
  disableBehaviors(this);
  faceHere(this, 0x01);
  return(0x00);
}

TRIGGER( speech , "2" )(obj speaker, string arg)
{
  disableBehaviors(this);
  faceHere(this, 0x02);
  return(0x00);
}

TRIGGER( speech , "3" )(obj speaker, string arg)
{
  disableBehaviors(this);
  faceHere(this, 0x03);
  return(0x00);
}

TRIGGER( speech , "4" )(obj speaker, string arg)
{
  disableBehaviors(this);
  faceHere(this, 0x04);
  return(0x00);
}

TRIGGER( speech , "5" )(obj speaker, string arg)
{
  disableBehaviors(this);
  faceHere(this, 0x05);
  return(0x00);
}

TRIGGER( speech , "6" )(obj speaker, string arg)
{
  disableBehaviors(this);
  faceHere(this, 0x06);
  return(0x00);
}

TRIGGER( speech , "7" )(obj speaker, string arg)
{
  disableBehaviors(this);
  faceHere(this, 0x07);
  return(0x00);
}