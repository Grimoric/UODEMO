// Real-C
#include "ENGINE.hpp"

FUNCTION void deactivate(obj this)
{
  if(hasObjVar(this, "objectId") && hasObjVar(this, "objectType"))
  {
    obj objectId = getobjvar_obj(this, "objectId");
    int objectType = getobjvar_int(this, "objectType");
    deleteIfValid(objectId, objectType);
    removeObjVar(this, "objectId");
    removeObjVar(this, "objectType");
    processTriggerCmds(this, "d");
  }
  return;
}

TRIGGER( message , "activate" )(obj sender, list args)
{
  if(hasObjVar(this, "onlyOne"))
  {
    deactivate(this);
  }
  int radius = 0x03;
  if(hasObjVar(this, "radius"))
  {
    radius = getobjvar_int(this, "radius");
  }
  int Q4F3 = 0x00;
  if(hasObjVar(this, "template"))
  {
    Q4F3 = getobjvar_int(this, "template");
    loc location = loc( getLocation(this) );
    obj Q5BQ = requestCreateNPCAt(Q4F3, location, radius);
    int a = objtoint(Q5BQ);
    if(a != 0x00)
    {
      int objectType = getObjType(Q5BQ);
      setObjVar(this, "objectId", Q5BQ);
      setObjVar(this, "objectType", objectType);
      processTriggerCmds(this, "a");
    }
  }
  else
  {
    bark(this, "Missing template objvar!");
  }
  return(0x00);
}

TRIGGER( message , "deactivate" )(obj sender, list args)
{
  deactivate(this);
  return(0x00);
}