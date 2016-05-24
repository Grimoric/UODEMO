// Real-C
#include "ENGINE.hpp"

#include "sk_table.h"

TRIGGER( convofunc , "TalkerName" )(obj talker, string arg)
{
  setConvoRet(getName(talker));
  return(0x00);
}

FUNCTION void Q4E7(obj attacker, obj victim)
{
  attack(attacker, victim);
  return;
}