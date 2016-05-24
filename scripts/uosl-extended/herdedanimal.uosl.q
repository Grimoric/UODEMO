// UOSL (enhanced)
inherits globals;

trigger callback<0x3F>()
{
  enableBehaviors(this);
  detachScript(this, "herdedanimal");
  return(0x00);
}