// Real-C
#include "ENGINE.hpp"

#include "sk_table.h"

FUNCTION int Q50I(obj item)
{
  int Q65M = getObjType(item);
  if((Q65M == 0x1E5E) || (Q65M == 0x1E5F))
  {
    return(0x00);
  }
  if(isMobile(item))
  {
    return(0x00);
  }
  return(0x01);
}

TRIGGER( creation )()
{
  int i;
  list Q47I;
  getContents(Q47I, this);
  if(numInList(Q47I) > 0x00)
  {
    obj Q47G = getBackpack(this);
    if(Q47G != NULL())
    {
      for(i = 0x00; i < numInList(Q47I); i ++)
      {
        if(Q50I(Q47I[i]))
        {
          bark(this, "Found: " + getName(Q47I[i]) + "(" + getObjType(Q47I[i]) + ")");
          int Q4Q1 = putObjContainer(Q47I[i], Q47G);
        }
      }
    }
    else
    {
      loc Q4UD = loc( getLocation(this) );
      for(i = 0x00; i < numInList(Q47I); i ++)
      {
        if(Q50I(Q47I[i]))
        {
          bark(this, "Found: " + getName(Q47I[i]) + "(" + getObjType(Q47I[i]) + ")");
          int bar = teleport(Q47I[i], Q4UD);
        }
      }
    }
  }
  recalcWeight(this);
  int Q63R = 0x00;
  for(i = 0x00; i < 0x2E; i ++)
  {
    Q63R = Q63R + getSkillLevelNoStat(this, i);
  }
  if(Q63R > 0x1B58)
  {
    int Q5HX = 0x1B58 * 0x64 / Q63R;
    bark(this, "Skill total was:" + Q63R + ", keeping " + Q5HX + "");
    for(i = 0x00; i < 0x2E; i ++)
    {
      setSkillLevel(this, i, getSkillLevelNoStat(this, i) * Q5HX / 0x64);
    }
  }
  detachScript(this, "fixme");
  return(0x00);
}