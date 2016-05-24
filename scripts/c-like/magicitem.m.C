// Real-C
#include "ENGINE.hpp"

#include "identify.h"

MEMBER list Q5HU;

FORWARD void Q45W(obj Q4GA);
FORWARD int Q4ZD(obj looker);

TRIGGER( lookedat )(obj looker)
{
  if(hasObjVar(this, "owner"))
  {
    obj Q4GA = getObjVar(this, "owner");
    Q45W(Q4GA);
  }
  string name;
  name = Q4RB(this);
  if(hasObjVar(this, "beenIdentified"))
  {
    if(Q4ZD(looker) > 0x00)
    {
      string Q54S = getObjVar(this, "MagicItemName");
      name = Q54S;
      if(hasObjVar(this, "charges"))
      {
        int charges = getObjVar(this, "charges");
        if(charges > 0x00)
        {
          name = Q54S + "  charges: " + charges;
        }
      }
    }
  }
  barkTo(this, looker, name);
  return(0x00);
}

TRIGGER( creation )()
{
  setObjVar(this, "lookAtText", Q4RB(this));
  return(0x00);
}

FUNCTION void Q45W(obj Q4GA)
{
  if(isInList(Q5HU, Q4GA))
  {
    for(int Q623 = 0x00; Q623 < numInList(Q5HU); Q623 ++)
    {
      obj Q67B = Q5HU[Q623];
      if(Q4GA == Q67B)
      {
        return;
      }
    }
  }
  else
  {
    appendToList(Q5HU, Q4GA);
  }
  if(numInList(Q5HU) > 0x04)
  {
    removeItem(Q5HU, 0x05);
  }
  return;
}

FUNCTION int Q4ZD(obj looker)
{
  for(int Q623 = 0x00; Q623 < numInList(Q5HU); Q623 ++)
  {
    obj Q67B = Q5HU[Q623];
    if(looker == Q67B)
    {
      return(0x01);
    }
  }
  return(0x00);
}