// UOSL (native)
function void deactivate(obj this)
{
  if(hasObjVar(this, "_objectId") && hasObjVar(this, "_objectType"))
  {
    obj objectId = getobjvar_obj(this, "_objectId");
    int objectType = getobjvar_int(this, "_objectType");
    deleteIfValid(objectId, objectType);
    removeObjVar(this, "_objectId");
    processTriggerCmds(this, "d");
  }
  return;
}

trigger message("activate")
{
  if(!hasObjVar(this, "dontDelete"))
  {
    deactivate(this);
  }
  createPlaceHolder(this);
  processTriggerCmds(this, "a");
  return(0x00);
}

trigger message("deactivate")
{
  deactivate(this);
  return(0x00);
}