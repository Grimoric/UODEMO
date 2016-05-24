// Real-C
#include "ENGINE.hpp"

TRIGGER( creation )()
{
  disableBehaviors(this);
  MEMBER int Q485 = 0x00;
  return(0x01);
}

TRIGGER( speech , "come" )(obj speaker, string arg)
{
  loc a = loc( getLocation(speaker) );
  walkTo(this, a, 0x2A);
  enableBehaviors(this);
  return(0x00);
}

TRIGGER( speech , "stop" )(obj speaker, string arg)
{
  disableBehaviors(this);
  Q485 = 0x00;
  return(0x00);
}

TRIGGER( speech , "start" )(obj speaker, string arg)
{
  enableBehaviors(this);
  Q485 = 0x01;
  return(0x00);
}

TRIGGER( pathfound , 0x2A )()
{
  bark(this, "I made it!");
  if(!Q485)
  {
    disableBehaviors(this);
  }
  return(0x00);
}

TRIGGER( pathnotfound , 0x2A )()
{
  bark(this, "hrmph, I failed.");
  if(!Q485)
  {
    disableBehaviors(this);
  }
  return(0x00);
}