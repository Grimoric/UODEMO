// Real-C
#include "ENGINE.hpp"

#include "globals.h"

FUNCTION obj Q4RG()
{
  if(!hasObjVar(this, "controller"))
  {
    return(NULL());
  }
  obj owner = getObjVar(this, "controller");
  return(owner);
}

TRIGGER( use )(obj user)
{
  int Q4Q1 = addToObjVarListSet(this, "users", getName(user));
  return(0x01);
}

TRIGGER( death )(obj attacker, obj corpse)
{
  obj Q4GR = corpse;
  int Q4ED = getCorpseBodyType(this);
  if((Q4ED == 0x0190) || (Q4ED == 0x0191))
  {
    if(attacker != NULL())
    {
      setObjVar(this, "murderer", getName(attacker));
    }
    setObjVar(this, "nameVar", getName(Q4GR));
  }
  if(isPlayer(Q4GR))
  {
    setObjVar(this, "controller", Q4GR);
    if(hasObjVar(Q4GR, "crimeVictimList"))
    {
      removeObjVar(Q4GR, "crimeVictimList");
      setCriminal(Q4GR, 0x01E0);
      setObjVar(this, "criminal", 0x01);
    }
  }
  copyObjVar(this, Q4GR, "murderCount");
  copyObjVar(this, Q4GR, "criminal");
  copyObjVar(this, Q4GR, "crimeVictimList");
  copyObjVar(this, Q4GR, "lawfullyDamaged");
  copyObjVar(this, Q4GR, "aggressionVictimList");
  copyObjVar(this, Q4GR, "opposingGuilds");
  copyObjVar(this, Q4GR, "guildstoneId");
  copyObjVar(this, Q4GR, "guildType");
  return(0x01);
}

FUNCTION void Q4UW(obj user)
{
  int Q4ED = getCorpseBodyType(this);
  if((Q4ED == 0x0190) || (Q4ED == 0x0191))
  {
    receiveUnhealthyActionFrom(this, user);
  }
  return;
}

TRIGGER( objaccess , 0x04 )(obj user, obj usedon)
{
  if(this == usedon)
  {
    return(0x01);
  }
  Q4UW(user);
  return(0x01);
}

TRIGGER( objaccess , 0x08 )(obj user, obj usedon)
{
  if(this == usedon)
  {
    return(0x01);
  }
  Q4UW(user);
  return(0x01);
}