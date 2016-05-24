// Real-C
#include "ENGINE.hpp"

TRIGGER( enterrange , 0x03 )(obj target)
{
  if(!hasObjVar(this, "disarmed"))
  {
    setType(this, 0x114C);
  }
  return(0x01);
}

TRIGGER( enterrange , 0x02 )(obj target)
{
  if(!hasObjVar(this, "disarmed"))
  {
    loseHP(target, dice(0x14, 0x05));
  }
  return(0x01);
}

TRIGGER( leaverange , 0x04 )(obj target)
{
  setType(this, 0x114B);
  return(0x01);
}

TRIGGER( message , "axe_disarm" )(obj sender, list args)
{
  int Q5DQ;
  if(!hasObjVar(this, "disarmed"))
  {
    setObjVar(this, "disarmed", Q5DQ);
  }
  return(0x00);
}

TRIGGER( message , "axe_reload" )(obj sender, list args)
{
  if(hasObjVar(this, "disarmed"))
  {
    removeObjVar(this, "disarmed");
  }
  return(0x00);
}