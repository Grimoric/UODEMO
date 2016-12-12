// UOSL (native)
inherits globals;

trigger callback(0x7D)
{
  if(hasObjVar(this, "criminal"))
  {
    removeObjVar(this, "criminal");
  }
  detachScript(this, "remcriminal");
  return(0x00);
}