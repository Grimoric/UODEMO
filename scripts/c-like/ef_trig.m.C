// Real-C
#include "ENGINE.hpp"

#include "spelskil.h"

MEMBER int Q4W8;

TRIGGER( message , "hitsomething" )(obj sender, list args)
{
  obj caster = Q4RM(this);
  obj Q4U2 = args[0x00];
  if(caster == Q4U2)
  {
    Q4W8 = 0x01;
  }
  return(0x01);
}

FUNCTION void Q41K(obj Q4P2, obj target, int Q4GH)
{
  if(Q41L(Q4P2, target))
  {
    sfx(getLocation(target), 0x0211, 0x00);
    obj caster = Q4RM(Q4P2);
    if((Q4W8) || (target == caster))
    {
      caster = NULL();
    }
    else
    {
      list Q5DT;
      appendToList(Q5DT, caster);
      messageToRange(getLocation(this), 0x04, "hitsomething", Q5DT);
    }
    Q556(target);
    int Q527 = Q427(NULL(), Q4GH, this, target, 0x02, 0x00);
  }
  return;
}

TRIGGER( enterrange , 0x00 )(obj target)
{
  Q41K(this, target, 0x07);
  callback(this, 0x01, 0x2F);
  return(0x01);
}

TRIGGER( callback , 0x2F )()
{
  loc Q4VS = loc( getLocation(this) );
  list Q5HR;
  getMobsInRange(Q5HR, Q4VS, 0x01);
  for(int i = 0x00; i < numInList(Q5HR); i ++)
  {
    obj target = Q5HR[i];
    Q41K(this, target, 0x03);
  }
  if(numInList(Q5HR) > 0x00)
  {
    callback(this, 0x01, 0x2F);
  }
  else
  {
    setObjVar(this, "defensive", 0x01);
  }
  return(0x01);
}