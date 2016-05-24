// UOSL (enhanced)
inherits spelskil;

trigger creation()
{
  Q581(this, 0x00, 0x00, 0x05, 0x00);
  return(0x01);
}