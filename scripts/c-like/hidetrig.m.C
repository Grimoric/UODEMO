// Real-C
#include "ENGINE.hpp"

#include "sk_table.h"

TRIGGER( callback , 0x54 )()
{
  barkToHued(this, this, 0x22, "You are no longer hidden.");
  setInvisible(this, 0x00);
  detachScript(this, "hidetrig");
  deleteObject(this);
  return(0x00);
}

TRIGGER( message , "canUseSkill" )(obj sender, list args)
{
  callback(this, 0x00, 0x54);
  return(0x01);
}