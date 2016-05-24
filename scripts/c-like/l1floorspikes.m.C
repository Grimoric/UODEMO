// Real-C
#include "ENGINE.hpp"

TRIGGER( enterrange , 0x00 )(obj target)
{
  int damage;
  if(!hasObjVar(this, "disarmed"))
  {
    damage = dice(0x03, 0x05);
    setCurHP(target, getCurHP(target) - damage);
  }
  return(0x00);
}

TRIGGER( message , "FSdisarm" )(obj sender, list args)
{
  int Q5DQ;
  if(!hasObjVar(this, "disarmed"))
  {
    setObjVar(this, "disarmed", Q5DQ);
  }
  return(0x00);
}

TRIGGER( message , "FSreload" )(obj sender, list args)
{
  int Q5DQ;
  if(!hasObjVar(this, "disarmed"))
  {
    setObjVar(this, "disarmed", Q5DQ);
  }
  return(0x00);
}