// UOSL (enhanced)
inherits globals;

trigger callback<0x57>()
{
  removeObjVar(this, "potionHealed");
  detachScript(this, "potiontime");
  return(0x00);
}