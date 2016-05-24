// UOSL (native)
inherits globals;

trigger message("disarm")
{
  if(!hasObjVar(this, "disarmed"))
  {
    setObjVar(this, "disarmed", 0x01);
  }
  return(0x00);
}

trigger message("reset")
{
  if(hasObjVar(this, "disarmed"))
  {
    removeObjVar(this, "disarmed");
  }
  return(0x00);
}