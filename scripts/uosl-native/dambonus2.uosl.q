// UOSL (native)
inherits spelskil;

trigger creation
{
  Q581(this, 0x00, 0x00, 0x03, 0x00);
  return(0x01);
}