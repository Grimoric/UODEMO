// Real-C
#include "ENGINE.hpp"

#include "spelskil.h"

FUNCTION string Q4XP(obj Q5F3)
{
  string Q43P;
  if(hasObjVar(Q5F3, "MagicItemName"))
  {
    Q43P = getObjVar(Q5F3, "MagicItemName");
  }
  else
  {
    Q43P = "";
  }
  return(Q43P);
}

FUNCTION string Q4RB(obj item)
{
  string Q5K9 = "";
  string Q4R4 = "";
  int Q5NC = 0x00;
  int val = 0x00;
  Q5K9 = getArticle(getObjType(item));
  Q5NC = getResource(val, item, "magic", 0x03, 0x02);
  if(Q5NC)
  {
    if(val > 0x00)
    {
      if(Q5K9 != "")
      {
        Q5K9 = Q5K9 + " ";
      }
      Q5K9 = Q5K9 + "magic";
    }
  }
  if(Q5K9 != "")
  {
    Q5K9 = Q5K9 + " ";
  }
  Q4R4 = Q5K9 + getNameByType(getObjType(item));
  return(Q4R4);
}

FUNCTION obj Q4RZ(obj item)
{
  obj Q4BA;
  obj Q5KE = item;
  int first = 0x01;
  while((first == 0x01) || (isContainer(Q5KE)))
  {
    first = 0x00;
    Q4BA = containedBy(Q5KE);
    if(Q4BA == NULL())
    {
      return(NULL());
    }
    if(isPlayer(Q4BA))
    {
      return(Q4BA);
    }
    if(isNPC(Q4BA))
    {
      return(Q4BA);
    }
    Q5KE = Q4BA;
  }
  return(NULL());
}

FUNCTION string Q4JM(obj user, obj usedon)
{
  string name;
  name = Q4XP(usedon);
  if(name == "")
  {
    doLookAt(user, usedon);
    return(name);
  }
  else
  {
    if(hasObjVar(usedon, "charges"))
    {
      int charges = getObjVar(usedon, "charges");
      if(charges > 0x00)
      {
        name = name + " with " + charges + " charges";
      }
    }
    if(!(hasObjVar(usedon, "appraising")))
    {
      systemMessage(user, "It is: " + name);
    }
    setObjVar(usedon, "beenIdentified", 0x01);
    setObjVar(usedon, "owner", user);
    setObjVar(usedon, "lookAtText2", name);
    attachScript(usedon, "magicitem");
    removeObjVar(usedon, "appraising");
  }
  return(name);
}