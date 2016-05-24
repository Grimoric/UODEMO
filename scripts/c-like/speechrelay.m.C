// Real-C
#include "ENGINE.hpp"

FUNCTION void Q45F()
{
  obj Q4E2 = containedBy(this);
  if(Q4E2 == NULL())
  {
    return;
  }
  list transmitList;
  clearList(transmitList);
  if(hasObjVar(Q4E2, "transmitList"))
  {
    getObjListVar(transmitList, Q4E2, "transmitList");
  }
  else
  {
    attachScript(Q4E2, "speechrelay");
  }
  prependToList(transmitList, this);
  setObjVar(Q4E2, "transmitList", transmitList);
  return;
}

FUNCTION void Q5MB()
{
  obj Q4E2 = containedBy(this);
  if(Q4E2 == NULL())
  {
    return;
  }
  if(hasObjVar(Q4E2, "transmitList"))
  {
    list transmitList;
    clearList(transmitList);
    getObjListVar(transmitList, Q4E2, "transmitList");
    removeSpecificItem(transmitList, this);
    if(numInList(transmitList) == 0x00)
    {
      removeObjVar(Q4E2, "transmitList");
      list Q5DP;
      message(Q4E2, "removefromparent", Q5DP);
      detachScript(Q4E2, "speechrelay");
    }
    else
    {
      setObjVar(Q4E2, "transmitList", transmitList);
    }
  }
  return;
}

TRIGGER( message , "removefromparent" )(obj sender, list args)
{
  Q5MB();
  return(0x01);
}

TRIGGER( creation )()
{
  Q45F();
  return(0x01);
}

TRIGGER( wasdropped )(obj dropper)
{
  Q45F();
  return(0x01);
}

TRIGGER( wasgotten )(obj getter)
{
  Q5MB();
  return(0x01);
}

TRIGGER( message , "speechrelay" )(obj sender, list args)
{
  debugMessage("(speechrelay):" + getName(this) + ":");
  if(hasObjVar(this, "transmitList"))
  {
    list transmitList;
    clearList(transmitList);
    getObjListVar(transmitList, this, "transmitList");
    int Q515 = 0x00;
    for(int i = 0x00; i < numInList(transmitList); i ++)
    {
      if(containedBy(transmitList[i]) == this)
      {
        message(transmitList[i], "speechrelay", args);
      }
      else
      {
        removeItem(transmitList, i);
        Q515 ++;
        i --;
      }
    }
    if(Q515)
    {
      if(numInList(transmitList) == 0x00)
      {
        Q5MB();
        removeObjVar(this, "transmitList");
        detachScript(this, "speechrelay");
      }
      else
      {
        setObjVar(this, "transmitList", transmitList);
      }
    }
    return(0x00);
  }
  message(this, "speechrelayed", args);
  return(0x00);
}

TRIGGER( speech , "*" )(obj speaker, string arg)
{
  list args;
  appendToList(args, speaker);
  appendToList(args, arg);
  message(this, "speechrelay", args)/* semicolon added by the decompiler post-processor */;
  return(0x01);
}