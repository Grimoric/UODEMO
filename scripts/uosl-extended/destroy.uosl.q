// UOSL (enhanced)
inherits spelskil;

trigger callback<0x1E>()
{
  deleteObject(this);
  return(0x00);
}