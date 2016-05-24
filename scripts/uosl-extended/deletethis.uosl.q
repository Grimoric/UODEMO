// UOSL (enhanced)
inherits globals;

trigger callback<0x1B>()
{
  deleteObject(this);
  return(0x01);
}