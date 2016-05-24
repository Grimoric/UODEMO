// UOSL (native)
inherits globals;

trigger callback(0x1B)
{
  if(hasObjVar(this, "inUse"))
  {
    removeObjVar(this, "inUse");
  }
  detachScript(this, "removeinuse");
  return(0x01);
}