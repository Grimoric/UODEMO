// UOSL (enhanced)
inherits globals;

trigger callback<0x5F>()
{
  if(hasObjVar(this, "campFireId"))
  {
    removeObjVar(this, "campFireId");
  }
  if(hasObjVar(this, "timeInCamp"))
  {
    removeObjVar(this, "timeInCamp");
  }
  detachScript(this, "removecamping");
  return(0x01);
}