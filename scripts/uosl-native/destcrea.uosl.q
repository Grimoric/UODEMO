// UOSL (native)
inherits globals;

trigger callback(0x08)
{
  deleteObject(this);
  return(0x00);
}